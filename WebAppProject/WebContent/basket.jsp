<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;%>


<HTML>
<HEAD>
    <TITLE>Basket</TITLE>
    <link rel="stylesheet" href="CSS/basket.css">
</HEAD>

<BODY>

<%
    try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/WebAppProject?user=root&password=anoleo201194");


       Statement statement = connection.createStatement() ;
      

       resultset =statement.executeQuery("select * from vat") ;
      
%>

<center>
    <h1> Select Country</h1>
        <select>
        <%  while(resultset.next()){ %>
            <option><%= resultset.getString(1)%></option>   
        <% } %>
        
        </select>
</center>

<form>
<input type="textarea" placeholder="Insert Voucher Code Here!" id="voucher"></input>
<button type="submit" value="submit" onaction="voucherfunction()">Submit voucher</button>
</form>

<script>function voucherfunction(){
	if (voucher = "studentdiscount"){
	var total= sum-(sum+(sum*resultset.getString(2))*0.20);
}
</script>
<%

        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

</BODY>
</HTML>