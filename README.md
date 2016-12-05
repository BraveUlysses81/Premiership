# premiership
A web application for competitions of selecting professional soccer game results

#The project files are separated into java code (src/premier) and jsp and others top level code (web content).
Usernames and Passwords for the entries are already stored in a database. This data can be loaded by running
the DataSetServlet.java to input the initial user data

1.  The basic path is for a user to start at the index.jsp where they will log in, through a call to the
    LoginServlet.java
2.  If the login is unsuccessful, they will be redirected to index.jsp to try again.
3.  If the login is succesful, their Person.java object will be recorded in a session and
    they will be directed to rules.jsp where they can view the competition rules.
4.  From there, the have the option of four different paths. The next logical choice is to go to the "Make Picks"
    section, otherwise known as the makePicks.jsp.
5.  In this current version, the winning team radio buttons are pre-selected and although not visible, the confidence
    point drop downs are pre-selected as well to make for a quick submission ("Submit" button)
6.  "Submit" sends the information to PicksServlet.java
7.  In PicksServlet.java the person session attribute is retrieved along with the parameters of game winners "win*"
    and confidence points "con*"
8.  With this these fields are then used to initialize 10 new Game.java objects.
9.  At this point, all Game have been assigned to a Person object, in this case, the Person object from the
    original login session.
10. A Set<Game> object is created and ten Game objects are added to the set.
11  The Set is then passed, along with the person as arguments to the addGames static method in the PersonDB.java class
12. This persists (or merges) the Person object with the newly added Set<Game> added to it.

My problem lies here. In my MySQL database, the Person table is already filled with the appropriate fields. After
running the aforementioned procedure, the Game table is also filled with this new slate of ten games. All
the fields are filled correctly, including the all important person field. However, the person_game join table
is not filled.

I feel part of this problem is that the person_game table doesn't allow for the person_id field to be non-unique.
Clearly we can and should have the same person_id more than once. Also, I don't think that in the person_game
table that both fields should have Primary Keys attached to them. I'm not sure if this is accurate.

More importantly, which is this occuring and how can I prevent making this same mistake when developing table
structures.

Extra: For the Primary Key of my Game table and object, I don't want an auto generated long. I'd prefer to
have a composite string composed of "person_id + week + gameNo". This would also be a unique string by definition
and would avoid mistaken dupicate entries as well as a more intuitive way of retrieving individual Game objects.
