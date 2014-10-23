<%@ Page Language="VB" AutoEventWireup="false" CodeFile="About.aspx.vb" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    
     <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
    <div id="nav">
	
</div>

</head>
<body>
       <h1>Wicked Easy Recipes</h1>
        <h3>Using 5 Ingedients or Less!</h3>
       

    <ul>
		<li> <a href="./default.aspx"> Home Page</a>&nbsp&nbsp |&nbsp&nbsp<a href="./insert.aspx"> New Recipe </a>&nbsp&nbsp |&nbsp&nbsp<a href="./about.aspx"> About Us </a>&nbsp&nbsp |&nbsp&nbsp<a href="./contact.aspx"> Contact </a></li>
	</ul>

    <form id="form1" runat="server">
  
       
   <div class="picture"><img src ="1.jpg" alt="Cartoon" title="Find Recipes" width="250px" height="250px" /></div>

 <div class="about">
        Here, you can find any Recipes you want!<br />
        Here, you can share your amazing Recipes!<br />
        Please Join Us!</div>
    </form>

</body>
</html>
