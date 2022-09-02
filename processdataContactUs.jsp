<%@ page language="java" import="java.sql.*"%>

<%

    String name = request.getParameter("name");

    String email = request.getParameter("email");

    String subject = request.getParameter("subject");

    String message = request.getParameter("message"); 

    try {

        Class.forName("com.mysql.jdbc.Driver");  


        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root",""); 

        PreparedStatement ps = con.prepareStatement("insert into info values(?,?,?,?)");

        ps.setString(1, name);

        ps.setString(2, email);

        ps.setString(3, subject);
        
        ps.setString(4, message);

        ps.executeUpdate();

//        out.println("Data saved successfully");

    } catch (Exception e) {

        out.println(e);

    }
%>
