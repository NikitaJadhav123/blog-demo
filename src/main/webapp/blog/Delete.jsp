
<%@ page import="com.upgrad.blog.dao.DAOFactory" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    /*If user tries to click on browser bac k button then he/ she should not be able to access this page*/
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);

    /*
	* TODO: 7.7. Check if user is logged in or not. if not then redirect user to default page i.e index.jsp.
	* (Hint: You need to handle NullPointerException.)
	* (Hint: Make use of the email id stored in the session object to check if user is logged in or not.)
    */

%>
<html>
<head>
    <title>Delete Post</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css">
</head>
<body>
<header class="header">
	
	<!--
		TODO: 7.8. If user is logged in then display the string before @ in the user's email id
		on this web page. For example, if email id is example@gmail.com, then display "Logged In as example"
		in the top right corner of the web page. 
	-->
    <%--    Showing text before @ in email as username--%>

</header>
<div id="form_wrapper">
    <form id="delete_form" method="post">
        <div id="post_id_div">
            <label for="postId">Post Id</label>
            <input type="number" min="1" required="required" placeholder="Post Id" name="postId" id="postId"/>
        </div>

        <button type="submit">Delete</button>
        <a class="not-block" href="../Home.jsp">Home Page</a>
    </form>
    <%
/*
 * TODO: 7.9. Complete the following Java code to delete a post from the database corresponding to the
 * requested post id and update the value of isDeleted flag. "isDeleted" flag tells whether the post was
 * deleted from the database or not.
*/
        if (request.getMethod().equals("POST")) {
        	boolean isDeleted = false;
/*
 * Add one line of code here
*/

            if(isDeleted) {%>
                <script type="text/javascript">alert("Post deleted successfully!")</script>
            <%} else { %>
    <script type="text/javascript">alert("No Post exist with the given Post Id")</script>
        <% }}
    %>
</div>
</body>
</html>