# MedicalBooking
## web application.
#### Video Demo:  https://youtu.be/ZOCMYtHfu88
#### Description:



* **The idea of the project**
It's a web app for booking appointments with doctor. The user register and make an account with a unique username or if he/she used it before they can login.
then there is the booking page it take your full name, number, email, day, month and the specific time he/she want to book.
after submitting his/her reservation the user would see your appointments in appointments page.
If there is other question or want to give feedback there is a tab for inquiries.
Taking the user'name and email address then the team will contact him/her as soon as possible.
After that the user can log out.



* **The code**
I used flask, html, CSS and sqlite.



* ## Html and CSS
The pages'view I used some from bootstrap. I wanted to make them simple and comfortable for the eye.
I used layout.html for being the main shape for the other web pages. I extended it later in them using Jinja.
I wanted to make specific changes so used CSS regular code and edited in html tags and style.css file.



* ## Sqlite
I made database called hospital. Created 3 table in it.
*users, appointments and inquiries*
The first one for collecting users data. Names id passwords - hashed ones -.
The second one for the users appointments'data time, day and month also for
their emails and numbers so we can contact them if needed.
The third one for collecting the data they leave as feedback or
questions so the team can analyse it later.
*I used SQL from cs50 library to deal with sqlite in python*



* ## Flask/ python
It's the funniest part for me. I used two files. application.py for the main code and
helper.py for a specific function, the one that requires logging in.
I made a route for every web page and in most of the routes I used poth request methods
POST and GET for taking data safely from users.
If there is any missing or invalid inputs the fail page will appear with the missing part.



* ### For flask, it uses MVC design pattern, *Model* *View* *Controller*
#### The model is the database we use, I used three tables
users, appointments and inquiries
The first one for collecting users data and appintments for their appointments'data
and inquiries collects the data they leave so the team can analyse it later
The controller is the code that controls the app and link all of this together
The View is the html and CSS stuff, I explained it better above as the view



* ## Final words
I'm very grateful for taking CS50 and knowing David ,Brian and Doug LLoyed! You guys learnt me A LOT.
I made a good knowladge and foundation. I've known more about me and the things I love and stuff I don't prefer.
I knew I should study data structures better and more.
You increased my curiosity level and made me very very excited about learning.
I'm looking forward taking cs50 into to AI later.
Thanks for everyone behind the scene in CS50!

