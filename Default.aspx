<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_recipes" runat="server" ConnectionString="<%$ ConnectionStrings:db_xiaochxu_hw6 %>" SelectCommand="SELECT * FROM [xiaochxu_hw6]" DeleteCommand="DELETE FROM [xiaochxu_hw6] WHERE [ID] = @ID" InsertCommand="INSERT INTO [xiaochxu_hw6] ([recipe_name], [submitted_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @preparation, @notes)" UpdateCommand="UPDATE [xiaochxu_hw6] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [preparation] = @preparation, [notes] = @notes WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ing_1" Type="String" />
                <asp:Parameter Name="ing_2" Type="String" />
                <asp:Parameter Name="ing_3" Type="String" />
                <asp:Parameter Name="ing_4" Type="String" />
                <asp:Parameter Name="ing_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ing_1" Type="String" />
                <asp:Parameter Name="ing_2" Type="String" />
                <asp:Parameter Name="ing_3" Type="String" />
                <asp:Parameter Name="ing_4" Type="String" />
                <asp:Parameter Name="ing_5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
           <h1>Wicked Easy Recipes</h1>
        <h3>Using 5 Ingedients or Less!</h3>
        <p>&nbsp;</p>
       

    <ul>
		<li> <a href="./default.aspx"> Home Page</a>&nbsp&nbsp |&nbsp&nbsp<a href="./insert.aspx"> New Recipe </a>&nbsp&nbsp |&nbsp&nbsp<a href="./about.aspx"> About Us </a>&nbsp&nbsp |&nbsp&nbsp<a href="./contact.aspx"> Contact </a></li>
	</ul>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" cssClass="cssgridview" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sql_recipes" Width="545px" Height="262px">
                 
                <Columns>
                    <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name" SortExpression="recipe_name" />
                    <asp:BoundField DataField="submitted_by" HeaderText="Submitted By" SortExpression="submitted_by" />
                    <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="details.aspx?ID={0}" Text="Select" />
                </Columns>
            </asp:GridView>
        </p>
        <div class="foot">
            © 2014 6k:183- Software Development &amp; Design</div>
        <p>&nbsp;</p> <br />
    
    </div>
    </form>
</body>
</html>
