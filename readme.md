The details of the folders inside the project are as follows

1.com.upgrad.blog.dao: This folder contains classes which will be responsible for interacting with the database. This folder is the database layer for your web app.

2.com.upgrad.blog.db: This folder contains just one class which will be used to establish a connection with the database. This folder also contains the 'setup.sql' file which contains SQL queries to set up your database.

3.com.upgrad.blog.dto: This folder contains two classes which will be used to transfer data between your backend layer and your database layer.

4.com.upgrad.blog.exceptions: This folder contains two custom exception classes, which will be used for exception handling in your web app.

5.com.upgrad.blog.interfaces: This folder contains two interfaces which will be implemented by the classes present in the database layer. These interfaces will be primarily used to implement the factory pattern.

6.com.upgrad.blog.servlets: This folder contains two classes which will be used to fetch data from the front end layer, process that data and send a response back. This folder is the backend layer of your software.

7.com.upgrad.blog.util: This folder contains three classes, which will be used to perform utility tasks for your project.

8.webapp/blog: This folder contains the JSP files which contain the structure of the web pages that will be rendered in the browser. This folder, and the three other JSP files inside the webapp folder, are part of your front-end layer.

9.webapp/css: This folder contains the css file which will be used to make your web pages look better.

10.webapp/WEB-INF: This folder contains the web.xml file which is used to connect the front-end layer with the back-end layer.