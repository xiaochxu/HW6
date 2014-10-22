<%@ Page Language="VB" AutoEventWireup="false" CodeFile="details-1.aspx.vb" Inherits="details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <h1>
           <asp:SqlDataSource ID="Sql_DataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_xiaochxu_hw6 %>" DeleteCommand="DELETE FROM [xiaochxu_hw6] WHERE [ID] = @ID" InsertCommand="INSERT INTO [xiaochxu_hw6] ([recipe_name], [submitted_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @preparation, @notes)" SelectCommand="SELECT * FROM [xiaochxu_hw6]" UpdateCommand="UPDATE [xiaochxu_hw6] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [preparation] = @preparation, [notes] = @notes WHERE [ID] = @ID">
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
        </h1>
        <h1>Wicked Easy Recipes</h1>
        <h3>Using 5 Ingedients or Less!</h3>
        <h3>Home | New Recipe | About Us | Contact</h3>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="Sql_DataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="recipe_name" HeaderText="Recipe Name:" SortExpression="recipe_name" />
                    <asp:BoundField DataField="submitted_by" HeaderText="Submitted By:" SortExpression="submitted_by" />
                    <asp:BoundField DataField="ing_1" HeaderText="Ingredient #1:" SortExpression="ing_1" />
                    <asp:BoundField DataField="ing_2" HeaderText="Ingredient #2:" SortExpression="ing_2" />
                    <asp:BoundField DataField="ing_3" HeaderText="Ingredient #3:" SortExpression="ing_3" />
                    <asp:BoundField DataField="ing_4" HeaderText="Ingredient #4:" SortExpression="ing_4" />
                    <asp:BoundField DataField="ing_5" HeaderText="Ingredient #5:" SortExpression="ing_5" />
                    <asp:BoundField DataField="preparation" HeaderText="Preparation:" SortExpression="preparation" />
                    <asp:BoundField DataField="notes" HeaderText="Notes:" SortExpression="notes" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Fields>
            </asp:DetailsView>
        </p>
    <div>
    
    </div>
    </form>
</body>
</html>
