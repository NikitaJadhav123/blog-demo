<!-- ****************************DONE*********************** -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    /*If user tries to click on browser back button then he/ she should not be able to access this page*/
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
	/**
	* TODO: 4.11. If a user is logged in then, redirect the user to the Home.jsp page.
	* (Hint: Make use of the email id stored in the session object)
	*/

       try{
	      if(session.getAttribute("emailId")!=null){
             RequestDispatcher rd=request.getRequestDispatcher("/Home.jsp");

                   rd.forward(request, response);
            }
            }
              catch(NullPointerException e){
                             }



%>
<!--
	TODO: 4.3. Right now we have the structure of the form ready, however it's Sign In and
	Sign Up buttons are not functioning. Add 'method' and 'action' attributes to the form such
	that when the user clicks on the Sign In/ Sign Up button after filling the form data,
	the UserServlet gets invoked based on the URL mapping mentioned in the Deployment Descriptor.
-->
<html>
<head>
    <title>Login / Register</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css">
</head>
<body>
<div class="form_wrapper">
    <form id="login_form" method="post" action="<%=request.getContextPath()%> /blog/user" >
        <div id="email_div">
            <label for="emailId">User Email</label>
            <input type="text" placeholder="example@email.com" required="required" name="emailId" id="emailId"/>
        </div>
        <div id="password_div">
            <label for="password">Password</label>
            <input type="password" required="required" placeholder="********" name="password" id="password"/>
        </div>
        <input type="submit" value="Sign In" name="actionType"/>
        <input type="submit" value="Sign Up" name="actionType"/>
        <div class="error">
            <%--    Check if there is any error set in request.--%>
            <!--
            	TODO: 4.12. Write the Java code to display the error message
				present in the request object. These error messages will be
				set inside the UserServlet.
			-->
            <%

             try{
                  if((Boolean)request.getAttribute("isError")){
                         out.println(request.getAttribute("errorMessage"));
                     }
                 }
                 catch(NullPointerException e){
                 }

            %>
        </div>
    </form>
</div>

</body>
</html>