<!-- **********************DONE******************* -->
<%@ page import="com.upgrad.blog.dto.PostDTO" %>
<%@ page import="com.upgrad.blog.util.DateTimeFormatter" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    /*If user tries to click on browser bac k button then he/ she should not be able to access this page*/
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    /*
	* TODO: 4.24. Check if user is logged in or not. if not then redirect user to default page i.e index.jsp.
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
<html>
<head>
    <title>View Post After Creation</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css">
</head>
<body>
<header class="header">
	<!--
		TODO: 4.25. If user is logged in then display the string before @ in the user's email id
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
<!-- 
	TODO: 4.26. Retrieve the PostDTO object from the request object and print the data
	on this page.
 -->

<form>

<%
               try{
               out.println( "Email: "+session.getAttribute("emailId")+"\n");
               out.newLine();
               out.println( "Title: "+request.getParameter("title")+"\n");
               out.newLine();
               out.println( "Tag: "+request.getParameter("tag")+"\n");
               out.newLine();
               out.println( "Description: "+request.getParameter("description"));
               out.newLine();
               DateTimeFormatter formatter=new DateTimeFormatter();
               out.println( "Time: "+formatter.format(LocalDateTime.now()));
               }
               catch(NullPointerException ne){
               }

               %>



    <div class="post-list-wrapper">
        <div class="post-list">
           <% PostDTO p=new PostDTO();

           %>
        </div>
    </div>
    <div class="post-list-wrapper">
        <a href="../Home.jsp">Home Page</a>
    </div>
<%

%>
</form>
</body>
</html>