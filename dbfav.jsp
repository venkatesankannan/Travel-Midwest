<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.* " %>
      <%@ page import="java.util.* " %>
<%@ page import="java.io.*" %>
<%@ page import="org.postgresql.*" %> 
    <%String expressway = request.getParameter("expy");
    String address=request.getParameter("addr");
    String report=request.getParameter("rep");
    System.out.println(expressway);
                 try {
        				//out.println("Traffic meets");
        				String driver = "org.postgresql.Driver";
        				String url = "jdbc:postgresql://localhost:5432/postgres";
        				String username = "postgres";
        				String password = "root";
        				String myQuery = "SELECT * FROM \"travelTime\" where expressway='Kennedy Expy'";
        				Connection myConnection=null;
        				PreparedStatement myPreparedStatement=null;
        				ResultSet myResultSet = null;
        				Class.forName(driver);
        				myConnection = DriverManager.getConnection(url,username,password);
        				myPreparedStatement = myConnection.prepareStatement(myQuery);
        				//System.out.println("**********");
        				myResultSet = myPreparedStatement.executeQuery();
        				//System.out.println("working");
        					
        				while(myResultSet.next()){
        					expressway = myResultSet.getString("expressway");
        					     				        			
        				}

%> <%}
 				catch(ClassNotFoundException e){e.printStackTrace();}
				catch (SQLException ex)
				{
				System.out.print("SQLException: "+ex.getMessage());
				System.out.print("SQLState: " + ex.getSQLState());
				System.out.print("VendorError: " + ex.getErrorCode());
				}
		
	%>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>