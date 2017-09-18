# premiership
A web application for competitions of selecting professional soccer game results. It is based in the Java language and uses Servlets and 

#The project files are separated into java code (src/premier) and jsp and others top level code (web content).
Usernames and Passwords for the entries are already stored in a database. This data can be loaded by running
the DataSetServlet.java to input the initial user data

1.  The basic path is for a user to start at the index.jsp where they will log in, through a call to the
    LoginServlet.java
2.  If the login is unsuccessful, they will be redirected to index.jsp to try again.
3.  If the login is succesful, their Person.java object will be recorded in a session and
    they will be directed to rules.jsp where they can view the competition rules.
4.  From there, they have the option of four different paths. The next logical choice is to go to the "Make Picks"
    section, otherwise known as the makePicks.jsp.
5.  In this current version, the winning team radio buttons are pre-selected and although not visible, the confidence
    point drop downs are pre-selected as well to make for a quick submission ("Submit" button)
6.  "Submit" sends the information to PicksServlet.java
7.  In PicksServlet.java the person session attribute is retrieved along with the parameters of game winners "win*"
    and confidence points "con*"
8.  With this these fields are then used to initialize 10 new Game.java objects.
9.  At this point, all Games have been assigned to a Person object, in this case, the Person object from the
    original login session.
10. A Set<Game> object is created and ten Game objects are added to the set.
11  The Set is then passed, along with the person as arguments to the addGames method in the PersonDB.java class
12. This persists (or merges) the Person object with the newly added Set<Game> added to it.
13. At the end of the week, the RunWeekServlet is called after the proper winners are added, updating the database by adding the appropriate points to all the game and player tables in the database.
14. The particpants can check the standings on the getStandings page.
15. The basic process is repeated for each game week.
    
I'm working on restructuring the database to better normalize the data. Currently, the data is dealt with primarily in two tables, "Game" and "Person". While this works, I'd much prefer the games to belong to a given week and each week record, to belong to a distinct "Team". A person should really be a login individual who can have many teams and teams should be able to be owned by more than one person.

Also, I'd like to add some more responsive styling to allow the pages to be better viewed on devices of different sizes. I'd probably just implement some basic bootstrap. I'm not as focused on the styling, so much as it's friendly and plays well with the users.

Lastly, I'd like to put in some functionality with Twilio, or Tropo to allow some basic text interaction both for people to confirm signing up new accounts and also to allow users to get reminders if they have not entered in their selections on a weekly basis. I think that's one of the coolest, most useful features of some of the third party integrations.

