<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    /*If user tries to click on browser bac k button then he/ she should not be able to access this page*/
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);

    /*
	* TODO: 4.15. Check if user is logged in or not. if not then redirect user to default page i.e index.jsp.
	* (Hint: You need to handle NullPointerException.)
	* (Hint: Make use of the email id stored in the session object to check if user is logged in or not.)
    */


       try{
    	      if(session.getAttribute("emailId")==null){
                 RequestDispatcher rd=request.getRequestDispatcher("/Index.jsp");

                       rd.forward(request, response);
                }
                }
                  catch(NullPointerException e){
                                 }




%>
<!--
	TODO: 4.16. Right now we have the structure of the form ready, however it's Post button is
	not functioning. Add 'method' and 'action' attributes to the form such that when the user
	clicks on the Post button after filling the form data, the PostServlet gets invoked based
	on the URL mapping mentioned in the Deployment Descriptor.
-->
<html>
<head>
    <title>Create Post</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css">
</head>
<body>
<header class="header">
	<!--
		TODO: 4.17. If user is logged in then display the string before @ in the user's email id
		on this web page. For example, if email id is example@gmail.com, then display "Logged In as example"
		in the top right corner of the web page. 
	-->
    <%--    Showing text before @ in email as username--%>

    <%
     try{
    	      if(session.getAttribute("emailId")!=null){
    	        String[] arr= session.getAttribute("emailId").toString().split("@");
                out.println("Logged In as "+arr[0]);
                }
                }
                  catch(NullPointerException e){

                 }

       %>




</header>
<div id="form_wrapper">
    <form id="post_form" method="post" action="ViewPostById.jsp">
        <div id="email_div">
            <label >User Email</label>
            <span><%=session.getAttribute("emailId")%></span>
        </div>
        <div id="title_div">
            <label for="title">Blog Title</label>
            <input type="text" maxlength="200" required="required" placeholder="Title" name="title" id="title"/>
        </div>
        <div id="tag_div">
            <label for="tag">Blog Tag</label>
            <input type="text" required="required" maxlength="10" placeholder="java" name="tag" id="tag"/>
        </div>
        <div id="description_div">
            <label for="description">Blog Description</label>
            <textarea draggable="false" maxlength="1000" placeholder="Post Description" rows="15" cols="75" type="text" required="required" name="description" id="description"></textarea>
        </div>
        <button type="submit" name="PostButton">Post</button>
        <a class="not-block" href="../Home.jsp">Home Page</a>
    </form>
</div>

</body>
</html>