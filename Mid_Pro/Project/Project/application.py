from cs50 import SQL
from flask import Flask, flash, redirect, render_template, request, session
from flask_session import Session
from werkzeug.security import check_password_hash, generate_password_hash
from helper import login_required


app = Flask(__name__)


app.config["TEMPLATES_AUTO_RELOAD"] = True


# Configure session to use filesystem (instead of signed cookies)
app.config["SESSION_PERMANENT"] = False
app.config["SESSION_TYPE"] = "filesystem"
Session(app)


db = SQL("sqlite:///hospital.db")


@app.route("/", methods=["GET", "POST"])
def login():
    # Forget any user_id
    session.clear()

    if request.method == "POST":
        password = request.form.get("password")
        if not request.form.get("username"):
            return render_template("fail.html", missing="Please write your username.")
        elif not request.form.get("password"):
            return render_template("fail.html", missing="Please write your password.")

        # Query database for username
        rows = db.execute("SELECT * FROM users WHERE username = ?", request.form.get("username"))

        if len(rows) != 1 or not check_password_hash(rows[0]["hash"], password):
            return render_template("fail.html", missing="Invalid username or password")

        session["user_id"] = rows[0]["id"]

        return redirect("/book")
    else:
        return render_template("login.html")


@app.route("/register", methods=["GET", "POST"])
def register():
    if request.method == "POST":
        # Get username and password from the user
        username = request.form.get("username")
        password = request.form.get("password")
        confirmation = request.form.get("confirmation")
        gender = request.form.get("gender")

        # If the username is black
        if not username:
            return render_template("fail.html", missing="Please, Enter your username.")
        # If the username already exists
        elif len(db.execute("SELECT username FROM users WHERE username = ?", username)):
            return render_template("fail.html", missing="Sorry this username already exists, try another one.")
        # If the user didn't put the password
        elif not password:
            return render_template("fail.html", missing="Please, Enter your password.")
        # If the user didn't confirm the password
        elif not confirmation:
            return render_template("fail.html", missing="Please, Confirm your password.")
        # If the confirm doesn't match the password
        elif confirmation != password:
            return render_template("fail.html", missing="Your confirmation doesn't match your password.")
        elif not username:
            return render_template("fail.html", missing="Please, Choose your gender")

        # Insert the username and the password to the database
        db.execute("INSERT INTO users (username, hash, gender) VALUES(?, ?, ?)", username, generate_password_hash(password), gender)

        # Query database for username
        rows = db.execute("SELECT * FROM users WHERE username = ?", username)

        # Remember which user has logged in
        session["user_id"] = rows[0]["id"]

        # Redirect user to home page
        return redirect("/book")
    else:
        return render_template("register.html")

@app.route("/book", methods=["GET", "POST"])
@login_required
def book():
    if request.method == "POST":
        user_id = session["user_id"]
        name = str(request.form.get("first_name")) + str(request.form.get("last_name"))
        email = request.form.get("email")
        description = request.form.get("description")
        number = request.form.get("phone_number")
        month = request.form.get("month")
        day = request.form.get("day")
        time = request.form.get("time")
        times = db.execute("SELECT * FROM appointments WHERE time = ?", time)
        # If the username is blank
        if not name or not email or not number or not time or not day or not month:
            return render_template("fail.html", missing="Please, Fill your booking form.")
        elif len(times):
            return render_template("fail.html", missing="Unavailable time.")
        # Insert the username and the password to the database
        db.execute("INSERT INTO appointments (name, email, description, number, time, user_id, day, month) VALUES(?, ?, ?, ?, ?, ?, ?, ?)", name, email, description, number, time, user_id, day, month)
        return redirect("/appointments")
    else:
        return render_template("book.html")



@app.route("/appointments", methods=["GET", "POST"])
@login_required
def appointments():
    user_id = session["user_id"]
    rows = db.execute("SELECT * FROM appointments WHERE user_id = ?", user_id)
    return render_template("appointments.html", rows=rows)


@app.route("/ask", methods=["GET", "POST"])
@login_required
def ask():
    if request.method == "POST":
        username = request.form.get("username")
        email = request.form.get("email")
        description = request.form.get("description")
        if not username or not email or not description:
            return render_template("fail.html", missing="Please, Fill your question form.")
        db.execute("INSERT INTO inquiries(username, description, email) VALUES(?, ?, ?)", username, description, email)
        return render_template("answer.html")
    else:
        return render_template("ask.html")


@app.route("/logout")
def logout():
    # Forget any user_id
    session.clear()
    return redirect("/")

