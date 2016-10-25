<%@page import="java.io.IOException"%>
<%@page language="java" contentType="text/html;charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
    <body>
        
        <%@page import="java.sql.*" %>
        <%@page import="javax.sql.*" %>
        
        
        <%
           
            
        class Connection{ 


				public  Connection(){  
					try{  
					Class.forName("com.mysql.jdbc.Driver");  
					java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/friendzone","root","");  
	}catch(Exception e){ System.out.println(e);}
	} 
	} 
	
	          // if(goo==1){
            //Statement st=con.createStatement();
            //ResultSet rs;
            //rs=st.executeQuery("select * from users ");
           // while(rs.next() != false){
             //   out.println("WELCOME");
               // out.println(rs.getString(2));
               // String redirectURL = "http://localhost:8080/ViralKart2/web/index.html";
               // response.sendRedirect(redirectURL);
                
            //}
           // else{
            //	out.println("error");
              //String redirectURL = "http://localhost:8080/ViralKart2/";
               //response.sendRedirect(redirectURL);
            //}
            //}
            %>
            
        
        
        
        
    </body>
        
        
        
        
    
    
    
    
    
    
    
</html>