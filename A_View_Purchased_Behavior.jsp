<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Seller main page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #3366FF;
	font-size: 26px;
}
.style2 {font-size: 26px}
.style3 {color: #FFFFFF}
.style4 {
	color: #FF0000;
	font-style: italic;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
	   <%String admin=(String)application.getAttribute("admin");%>
        <ul>
          <li><a href="adminmain.jsp"><span>Home Page</span></a></li>
          <li  class="active"><a href="#"><span><%=admin%></span></a></li>
          <li><a href="adminlogin.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style1 style2">Learning Customer Behaviors for Effective Load Forecasting</h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
       
		<h2 class="style4" >View All Products Purchased Behavior!!! </h2>
          <p class="infopost">&nbsp;</p>
           <%@ include file="connect.jsp" %>
 <%@ page import="java.sql.*"%> 
		 
	<table width="545" border="1" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
            <tr bgcolor="#00FF33">
              <td width="108" height="30" bgcolor="#FF0000"><div align="center" class="style8 style25 style21 style6 style7 style3"><strong>id</strong></div></td>
              <td width="171" bgcolor="#FF0000"><div align="center" class="style8 style26 style6 style7 style3"><strong>Product Name</strong></div></td>
		      <td width="171" bgcolor="#FF0000"><div align="center" class="style8 style26 style6 style7 style3"><strong>Date</strong></div></td>
		      <td width="171" bgcolor="#FF0000"><div align="center" class="style8 style26 style6 style7 style3"><strong>Price</strong></div></td>
			   <td width="171" bgcolor="#FF0000"><div align="center" class="style8 style26 style6 style7 style3"><strong>E-Commerce Website</strong></div></td>
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
      	try 
	{
	
      		String query="select * from buy"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(6);
		s3=rs.getString(5);
		s4=rs.getString(8);
		
		%>
            </tr>
            <tr>
              <td height="28" bgcolor="#FFFF00"><div align="center" class="style25 style9"><strong><%=i%></strong></div></td>
              <td height="28" bgcolor="#FFFF00"><div align="center" class="style25 style9"><strong><%=s1%></strong></div></td>
			   <td height="28" bgcolor="#FFFF00"><div align="center" class="style25 style9"><strong><%=s3%></strong></div></td>
			   <td height="28" bgcolor="#FFFF00"><div align="center" class="style25 style9"><strong><%=s2+"/-RS"%></strong></div></td>
			   <td height="28" bgcolor="#FFFF00"><div align="center" class="style25 style9"><strong><%=s4%></strong></div></td>
		    </tr>
			 
			   <%	
			   
			
	  }

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </table>
          <p>&nbsp;</p>
          <p><a href="adminmain.jsp">Back</a></p>
        </div>
        </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search Here" type="text" onblur="if(this.value=='') this.value='Search Here'" onfocus="if(this.value =='Search Here' ) this.value=''"/>
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Seller</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp">Home</a></li>
            <li><a href="allusers.jsp">All User</a></li>
            <li><a href="adminlogin.jsp">Logout</a></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>