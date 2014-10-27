<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
</head>

<body>
    
    <form class="form1" runat="server">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

         <h1>Wicked Easy Recipes</h1>
        <h3>Using 5 Ingedients or Less!</h3>
    <ul>
		<li> <a href="./default.aspx"> Home Page</a>&nbsp&nbsp |&nbsp&nbsp<a href="./insert.aspx"> New Recipe </a>&nbsp&nbsp |&nbsp&nbsp<a href="./about.aspx"> About Us </a>&nbsp&nbsp |&nbsp&nbsp<a href="./contact.aspx"> Contact </a></li>
	</ul>
        <br />
        <div class="content">
        Your email address:<br />
           
        <asp:TextBox ID="senderAddress" runat="server" Width="247px"></asp:TextBox>
        <br />
        <br />
     
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Width="247px"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

            <br />

        <br />

      </div>
        <div class="foot">
            © 2014 6k:183- Software Development &amp; Design</div>
    </form>
</body>
</html>
