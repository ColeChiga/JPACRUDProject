# JPACRUDProject

## Description
The JPACRUDProject is a project designed to test someones ability to create and use an SQL database and creating a JPA project to preform CRUD operations, as well as integrating a Spring MVC project to build a web application allowing a user to preform CRUD operations on the entity built in the JPA.

When accessing the JPA project, the user is shown a table with A list of songs in the database. The user can then click on the title of a song to view information about that song. They can also access the navigation bar at the top of the page. 

### navigation bar
On the navigation bar, the user is given the option to add, edit, or remove a song, search for a song by a category (title, artist, album, or genre), or search for a song by its ID. 

### Create
When the user chooses to add a song, they are shown a list of all current songs and shown a form prompting them to input all of the information of the song. There are two required field, the title and the artist, the rest are options are optional. this information is then passed to the database and the song is added. The user is given a confirmation that the song was added to the database.

### Update
When the user edits a song they are shown a table with all of the information about every song (other than the id). The user can edit any field of any song (they can edit only one song at a time, but can change multiple fields in that song). When the user is finished editing a song, they are shown confirmation that the song has been changed.

### Delete
If the user chooses to remove a song they are shown a list of the songs and their artists and albums. When the user picks a song to remove, they are shown a confirmation that the song was removed and are given the option to undo it's removal (although the ID is changed).

### Read multiple songs
When searching for a song by one of the categories, the user is shown a list of all songs fitting the search criteria, similar to the list on the main page. they can click on the song's title to view the song.

### Read a single song
When the user searches for a song by it's ID only a single song will be accessed. When a single song is chosen, regardless of the method of getting there, they are shown the song's title, artist, album genre, release date, length, album artwork, as well as it's music video if one is available. 

## Technology used
Java, OOP, Eclipse, SpringToolSuite SQL, MySQL, Terminal, Maven, HTML, CSS, Bootstrap, SPRING MVC, JSP. JPA, CRUD, JUnit Tests, 

## Lessons Learned

I learned a few lessons during this project, the first of which is to take care in the setup of the project. Since there is a lot of information and ccoding that is done before the project can be at a testable place, it is very easy to make a small error that prevents the code from running. Depending on the error that is made it can be difficult to find and diagnose the problem. Taking a lot of time that can be better utilized. Because of this it is important to take your time in setting up a project and becoming farmiliar with every aspect of the set up.

Another lesson I learned was in creating and formatting CRUD operations. This process is made easy with the set up of a JPA project, but some queries can have unintended effects if not done carefully.

