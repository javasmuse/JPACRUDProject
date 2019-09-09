## Spring/MVC JPA CRUD Project

Individual homework for Skill Distillery week 9

### Overview
Basic data table to record chess games using CRUD concepts of create, read, use, and destroy. Fields include the player, their opponent, the player's color, location of the game, and if the player won. Point of view is from the player, such that, if the player's color is white we can assume the opponent's color was black, and if the player won, then the opponent lost, or if a draw it will be noted in outcome.
Location is important because many avid chess players, play in clubs or tournaments.

### How to Use
Main page provides options to create/add a new game, read/look up a game by ID, update a game, or delete a game. As well as an overview of all the available records shown by number and player name. Clicking on one of these will show the full details for that data row / id#.
Returning to the main menu is always an option.

### Technologies Used
mySQL, mySQL Workbench, GitHub, Java, SpringBoot, JPA, HTML, FullStack, OO

### Lessons Learned
Interconnections of the FullStack from building a database in mySQL Workbench to accessing that data with Java, passing it through a controller to the front end for a client to interact with the data and send it back through the controller all the way to the database.
How to create a database.

### Challenges
Tracing the data from front end to back end to ensure all the links are connected.
Lots of code to write and with that a lot of room for tiny errors - attention to detail is key!
Set the mySQL database to not accept some fields as null, but it does anyway. Would like to know why and how to fix that.

### Further Goals
This was an interesting project to explore dynamic web applications and FullStack. More practice with this by adding another table.
More practice with these concepts. Perhaps with a more complicated table.
Selected the idea of tracking chess games on request from my Dad. He wants a more complicated table that only takes in three data entries and fills in the remaining fields through math formulas. He will want more view options and especially a page to see the whole list of games in an easy to read format.
