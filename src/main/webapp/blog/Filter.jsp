<!--
*****************************DONE*********************************
-->
<%@ page import="com.upgrad.blog.dto.PostDTO" %>
<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.List" %>
<%@ page import="com.upgrad.blog.dao.DAOFactory" %>
<%@ page import="com.upgrad.blog.util.DateTimeFormatter" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    /*If user tries to click on browser bac k button then he/ she should not be able to access this page*/
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    /*
	* TODO: 7.12. Check if user is logged in or not. if not then redirect user to default page i.e index.jsp.
	* (Hint: You need to handle NullPointerException.)
	* (Hint: Make use of the email id stored in the session object to check if user is logged in or not.)
    */

%>
<html>
<head>
    <title>Filter Post</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css">
</head>
<body>
<header class="header">

	<!--
		TODO: 7.13. If user is logged in then display the string before @ in the user's email id
		on this web page. For example, if email id is example@gmail.com, then display "Logged In as example"
		in the top right corner of the web page. 
	-->
    <%--    Showing text before @ in email as username--%>

</header>
<div id="form_wrapper">
    <form id="filter_form" method="post">
        <div id="tag_div">
            <label for="tag">Select tag</label>
            <select name="tag" id="tag">
            <!--
            	TODO: 7.14. Write java code to populate all the tag options in the drop down menu.
            	(Hint: Use findAllTags() method of the PostDAO class.)
            -->


            </select>
        </div>
        <button type="submit">Filter</button>
        <a class="not-block" href="../Home.jsp">Home Page</a>
    </form>
</div>
<div class="post-list-wrapper">

<!--
	TODO: 7.15. Write code to get posts for the selected "tag" and render the search result on the web page.
	(Hint: Use findByTag() method of the PostDAO class.)
-->


</div>

</body>
</html>