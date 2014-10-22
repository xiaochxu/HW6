<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_recipes" runat="server" ConnectionString="<%$ ConnectionStrings:db_xiaochxu_hw6 %>" SelectCommand="SELECT * FROM [xiaochxu_hw6]"></asp:SqlDataSource>
       <h1>Wicked Easy Recipes</h1>
        <h3>Using 5 Ingedients or Less!</h3>
        <h3>Home | New Recipe | About Us | Contact</h3>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sql_recipes">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="recipe_name" HeaderText="recipe_name" SortExpression="recipe_name" />
                    <asp:BoundField DataField="submitted_by" HeaderText="submitted_by" SortExpression="submitted_by" />
                    <asp:BoundField DataField="ing_1" HeaderText="ing_1" SortExpression="ing_1" />
                    <asp:BoundField DataField="ing_2" HeaderText="ing_2" SortExpression="ing_2" />
                    <asp:BoundField DataField="ing_3" HeaderText="ing_3" SortExpression="ing_3" />
                    <asp:BoundField DataField="ing_4" HeaderText="ing_4" SortExpression="ing_4" />
                    <asp:BoundField DataField="ing_5" HeaderText="ing_5" SortExpression="ing_5" />
                    <asp:BoundField DataField="preparation" HeaderText="preparation" SortExpression="preparation" />
                    <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                </Columns>
            </asp:GridView>
        </p>
        <p>&nbsp;</p> <br />
    
    </div>
    </form>
</body>
</html>
