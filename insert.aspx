<%@ Page Language="VB" AutoEventWireup="false" CodeFile="insert.aspx.vb" Inherits="details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Recipe</title>
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
       <h1>
           <asp:SqlDataSource ID="Sql_insert" runat="server" ConnectionString="<%$ ConnectionStrings:db_xiaochxu_hw6 %>" SelectCommand="SELECT * FROM [xiaochxu_hw6]" DeleteCommand="DELETE FROM [xiaochxu_hw6] WHERE [ID] = @ID" InsertCommand="INSERT INTO [xiaochxu_hw6] ([recipe_name], [submitted_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @preparation, @notes)" UpdateCommand="UPDATE [xiaochxu_hw6] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [preparation] = @preparation, [notes] = @notes WHERE [ID] = @ID">
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
        <p>&nbsp;</p>
       

    <ul>
		<li> <a href="./default.aspx"> Home Page</a>&nbsp&nbsp |&nbsp&nbsp<a href="./insert.aspx"> New Recipe </a>&nbsp&nbsp |&nbsp&nbsp<a href="./about.aspx"> About Us </a>&nbsp&nbsp |&nbsp&nbsp<a href="./contact.aspx"> Contact </a></li>
	</ul>
        <p>
            <asp:FormView ID="FormView1" cssClass="cssformview" runat="server" DataKeyNames="ID" DataSourceID="Sql_insert" DefaultMode="Insert">
                <EditItemTemplate>
                  
                </EditItemTemplate>
                <InsertItemTemplate>

                    <table>
                        <tr>
                            <td class="title">
                                Recipe Name:
                            </td>
                            <td class="cell">
                             <asp:TextBox ID="recipe_nameTextbox" runat="server" Text='<%# Bind("recipe_name")%>' Height="20px" Width="190px" />
                            
                            </td>
                            <td class="valid">
                                <asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" ErrorMessage="  Please Enter information!" ControlToValidate="recipe_nameTextbox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                         <tr>
                            <td class="title">
                                Submitted By:
                            </td>
                            <td class="cell">
                                <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' Height="20px" Width="190px" />
                            </td>
                             <td class="valid">
                                <asp:RequiredFieldValidator ID="rfv_submittedby" runat="server" ErrorMessage="  Please Enter information!" ControlToValidate="submitted_byTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                         <tr>
                            <td class="title">
                                Ingredient #1:
                            </td>
                            <td class="cell">
                                <asp:TextBox ID="ing_1TextBox" runat="server" Text='<%# Bind("ing_1") %>' Height="20px" Width="190px" />
                            </td>
                              <td class="valid">
                                <asp:RequiredFieldValidator ID="rfv_ing1" runat="server" ErrorMessage="  Please Enter information!" ControlToValidate="ing_1Textbox"></asp:RequiredFieldValidator>
                            </td>

                        </tr>

                         <tr>
                            <td class="title">
                                Ingredient #2:
                            </td>
                            <td class="cell">
                                 <asp:TextBox ID="ing_2TextBox" runat="server" Text='<%# Bind("ing_2") %>' Height="20px" Width="190px" />
                            </td>
                        </tr>

                          <tr>
                            <td class="title">
                                Ingredient #3:
                            </td>
                            <td class="cell">
                                 <asp:TextBox ID="ing_3TextBox" runat="server" Text='<%# Bind("ing_3") %>' Height="20px" Width="190px" />
                            </td>
                        </tr>

                         <tr>
                            <td class="title">
                                Ingredient #4:
                            </td>
                            <td class="cell">
                                 <asp:TextBox ID="ing_4TextBox" runat="server" Text='<%# Bind("ing_4") %>' Height="20px" Width="190px" />
                            </td>
                        </tr>

                           <tr>
                            <td class="title">
                                Ingredient #5:
                            </td>
                            <td class="cell">
                               <asp:TextBox ID="ing_5TextBox" runat="server" Text='<%# Bind("ing_5") %>' Height="20px" Width="190px" />
                            </td>
                        </tr>

                           <tr>
                            <td class="title">
                                 Preparation:
                            </td>
                            <td class="cell">
                                 <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' Height="60px" TextMode="MultiLine" Width="190px" />
                            </td>
                               <td class="valid">
                                <asp:RequiredFieldValidator ID="rvf_preparation" runat="server" ErrorMessage="  Please Enter information!" ControlToValidate="preparationTextbox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        
                           <tr>
                            <td class="title">
                                 Notes:
                            </td>
                            <td class="cell">
                                 <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' Height="60px" TextMode="MultiLine" Width="190px" />
                            </td>
                        </tr>

                         <tr>
                            <td> <br />
                            </td>
                            <td> <br />
                            </td>
                        </tr>

                            <tr>
                            <td>
                            </td>
                            <td class="button">
                            <asp:Button ID="btn_insert" runat="server" CausesValidation="true" CommandName="insert" Text="Save"  BackColor="green"/>
                            </td>
                        </tr>
                    </table>

              
                </InsertItemTemplate>
                <ItemTemplate>
                   
                </ItemTemplate>
            </asp:FormView>
        </p>
    
    </div>
    </form>
     <div class="foot">
            © 2014 6k:183- Software Development &amp; Design</div>
        <p>&nbsp;</p> <br />
</body>
</html>
