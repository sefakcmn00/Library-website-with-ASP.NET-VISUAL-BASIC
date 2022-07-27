Project Name: Library Site with ASP .NET<br>Content of the Project:<br>The content and project purpose of the ASP .NET and Library System Site, which was made within the scope of the web programming course year-end homework, are stated in this section. <br>The general design of our library site named “sefabookstore.com” is given in the image below.
1. WEBSITE GENERAL FEATURES
HOMEPAGE:

Figure 1: sefabookstore.com site homepage
As can be seen on the picture above, a top banner, 5 menus, homepage screen, search for books, books, about us and There is an input menu. The design of this page is made in the index.aspx file among the software files.

![image](https://user-images.githubusercontent.com/67556543/181379115-b166ccb4-290e-4ec6-b50e-c434bb0d263d.png)

 
MEMBER LOGIN PROCEDURES:

On the other hand, the code lines of the User name and password request sections required for member login procedures are given in the image above. As can be seen in the code lines given above, the required code lines have been defined for entering the values ​​to be written in the text boxes and banner images have been added for the general appearance of the site.

 ![image](https://user-images.githubusercontent.com/67556543/181379235-b3de96f5-77c3-44a6-9de9-db94b5d33659.png)

 MENUS:
SEARCH BOOKS:

Search for Books tab contains content. There are 2 different search criteria on our site. These; Book Genre and Book Title

![image](https://user-images.githubusercontent.com/67556543/181379521-cc0eb4d3-f849-4bd9-82d9-7a0abea8c602.png)

 BOOKS :

In the picture above, dropdown is used in the Select genre section of the books section. Added books are available in the genre of Story, Historical Novel and Novel. When you specify a new type in the bookadd.aspx file to add the book type, it will automatically be added to the dropdown event.

https://cevirsozluk.com/
![image](https://user-images.githubusercontent.com/67556543/181379569-8458184c-3d54-4efb-9525-ff4239072fce.png)

ADD A BOOK:

On the above picture bookekle.aspx page, 7 information lines are required as Book Name, Catagory, Release Date, Book Type, Adding Picture, Adding Subject.
Recording the added books in the sql database is being done.

![image](https://user-images.githubusercontent.com/67556543/181379679-2a772f85-7ea7-4d01-8b71-a5d98eb22fbc.png)
ABOUT US:
Our fifth and last tab on the main menu of our website is the “ABOUT US” tab.

![image](https://user-images.githubusercontent.com/67556543/181379725-1aef0b9b-4f3d-4a11-9259-1da8df7924d6.png)

In the picture shown above, information about our site is given.
CONTACT:

The main content of the communication section, whose design is given in the above image; It consists of the name, surname, e-mail address, address, subject and message fields of the person who wants to send a message. Through this form, the user will be able to report complaints, requests and suggestions about the site or the restaurant. Here, the requested information and the message to be transmitted will be saved in the message table in the Access database. The general properties of the message table and the database properties will be given in detail in the second part.

![image](https://user-images.githubusercontent.com/67556543/181379809-afd40ae6-7cca-4323-8539-6a46281fe439.png)


As can be seen in the command lines of the "communication.aspx" file outlined above, Validation operations are also largely included in our code blocks. After checking the values ​​entered with the Validation commands, which are widely used to make the necessary controls, they were added to the Access database.
In general, the code snippets of the menus and tabs on our home page are like this. The second part, which will be given now, includes our tables in the Access database and their properties.

VOTING:
![image](https://user-images.githubusercontent.com/67556543/181379918-2c07dae3-f451-49bc-8128-b266b14b1c5f.png)

Radiobutton and button events are used for voting in the picture shown above.
The votes used are sent to the accesses database and saved.
2. ACCESS DATABASE GENERAL FEATURES
Access database was used on this website, which was made as a year-end homework. A database is a tool for collecting and organizing information. Databases store information about people, products, orders or anything else. In this project, Access Database program was used to save and list the data on our website. With Access:
 You can enter a new data into the database; for example you can add a new item to the stock
 You can edit the existing data in the database; for example, you can change the current location of an item.
 You can delete information if an item is sold or discarded
 Organize and view data in various ways
 Share data with others via reports, email messages, intranet or the Internet
Considering the features given above, working with Access Database has been both easy and very useful.
There are 3 tables in total in the Access Database in this project. These tables are respectively; “members”, “book” and “vote”. The following image shows the list of tables on the Access Database.

BOOKS TABLE:
The first of these tables is the “Books” table, which is the table where the data of users who are members of our site are kept.

The general view of our table, which consists of 8 different fields: book, category, date, subject, type, picture, tour, author's name and year of publication, is given in the image above. The data entered in the required fields by the user who registered on the website via the Books tab is automatically placed in 8 different fields on this table. Kitapekle.aspx, Kitapara.aspx and Kitap.aspx use this database.

![image](https://user-images.githubusercontent.com/67556543/181379949-8ac1e72b-b053-4bc4-be4a-c99cf8393c61.png)
VOTES TABLE:

![image](https://user-images.githubusercontent.com/67556543/181380076-bc327701-75c5-4486-9eb3-67381d9ab712.png)

The above-mentioned on-site voting has been made and the site scoring system has been made by keeping them in the accesses database.
MEMBERS TABLE:
![image](https://user-images.githubusercontent.com/67556543/181380167-21289504-88ba-4537-ad31-b97b04a0e3d8.png)


Another table in the Access database is the table where the members are kept. There are 8 fields in the content of this table.
The screenshot of this table, which consists of 8 fields: name, surname, username, password, e-mail, secret question, secret answer and authorization, is given above. Here is the part where registered users of the website are kept confidential. Member.aspx and member.aspx pages are fed from this table.
CODE BLOCK OF MEMBER.ASPX PAGE:
![image](https://user-images.githubusercontent.com/67556543/181380279-08ffb62e-208a-448b-9879-4baee4ee6c26.png)

In the image above, the connection of the communication menu with the Database is shown as code snippets.
In general, the general lines of the project created with asp .net are as follows. Ready css template was used in the project. Many web programming lessons such as validation, sql database connection, sql database query operations, web site design used in the construction phase of the project have been studied in detail and studied. The theoretical knowledge taken in the course has been put into practice in this project and the subject of web programming with asp .net is explained at a basic level.


