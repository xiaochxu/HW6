<%@ Page Language="VB" AutoEventWireup="false" CodeFile="details.aspx.vb" Inherits="details_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            background-color: #696969;
            font-size: 26px;
            color: white;
            font-weight: bold;
            width: 271px;
        }
        .auto-style2 {
            height: 30px;
            width: 271px;
            background-color: #f08080;
            padding: 10PX;
            text-align: left;
        }
        .auto-style3 {
            width: 271px;
        }
    </style>
</head>

<body>
      <h1>Wicked Easy Recipes</h1>
        <h3>Using 5 Ingedients or Less!</h3>
    <p>&nbsp;</p>
    <ul>
		<li> <a href="./default.aspx"> Home Page</a>&nbsp&nbsp |&nbsp&nbsp<a href="./insert.aspx"> New Recipe </a>&nbsp&nbsp |&nbsp&nbsp<a href="./about.aspx"> About Us </a>&nbsp&nbsp |&nbsp&nbsp<a href="./contact.aspx"> Contact </a></li>
	</ul>

    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_xiaochxu_hw6 %>" DeleteCommand="DELETE FROM [xiaochxu_hw6] WHERE [ID] = @ID" InsertCommand="INSERT INTO [xiaochxu_hw6] ([recipe_name], [submitted_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @preparation, @notes)" SelectCommand="SELECT * FROM [xiaochxu_hw6] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [xiaochxu_hw6] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [preparation] = @preparation, [notes] = @notes WHERE [ID] = @ID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
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
        <br />
        <span class="deleted"><asp:Label ID="lbl_deleted" runat="server" text-align="center"></asp:Label></span>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="525px"
              CssClass="cssformview"
           >
            <EditItemTemplate>
                <table>
                    <tr>
                           <td class="recipetitle1">Recipe</td>   
                            <td class="auto-style1">Details:</td>                       
                    </tr>
                  <tr>
                            <td class="title">Recipe Name:</td>
                            <td class="cell"><asp:TextBox ID="recipe_nameTextBox" runat="server" Text='<%# Bind("recipe_name") %>' Width="220px" /></td>  
                                                      
                            <td class="valid"><asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" ErrorMessage="  Please Enter information!" ControlToValidate="recipe_nameTextBox"></asp:RequiredFieldValidator></td>                           
                </tr>
              
                
                    

                   <tr>
                            <td class="title">Ingredient#1:</td>
                            <td class="cell"><asp:TextBox ID="ing_1TextBox" runat="server" Text='<%# Bind("ing_1") %>' Width="220px" /></td>                            
                            <td class="valid"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="  Please Enter information!" ControlToValidate="ing_1TextBox"></asp:RequiredFieldValidator></td>                           
                </tr>

                
                 <tr>
                            <td class="title">Submitted By:</td>
                            <td class="cell"><asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' Width="220px" /></td> 
                                               
                            <td class="valid"><asp:RequiredFieldValidator ID="rfv_submitted_by" runat="server" ErrorMessage="  Please Enter information!" ControlToValidate="submitted_byTextBox"></asp:RequiredFieldValidator></td>                           
                </tr>

              <tr>
                            <td class="title">Ingredient#2:</td>
                            <td class="cell"><asp:TextBox ID="ing_2TextBox" runat="server" Text='<%# Bind("ing_2") %>' Width="220px" /></td>                            
                            <td></td>                           
                </tr>

                
                  <tr>
                            <td class="title">Ingredient#3:</td>
                            <td class="cell"> <asp:TextBox ID="ing_3TextBox" runat="server" Text='<%# Bind("ing_3") %>' Width="220px" /></td>                            
                            <td></td>                           
                </tr>

                <tr>
                            <td class="title">Ingredient#4:</td>
                            <td class="cell"> <asp:TextBox ID="ing_4TextBox" runat="server" Text='<%# Bind("ing_4") %>' Width="220px" /></td>                            
                            <td></td>                           
                </tr>
               
                   <tr>
                            <td class="title">Ingredient#5:</td>
                            <td class="cell"> <asp:TextBox ID="ing_5TextBox" runat="server" Text='<%# Bind("ing_5") %>' Width="220px" /></td>                            
                            <td></td>                           
                </tr>
                
                 

                <tr>
                            <td class="title">Preparation:</td>
                            <td class="cell"><asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' Height="50px" TextMode="MultiLine" Width="220px" /></td>                            
                            <td class="valid"><asp:RequiredFieldValidator ID="rfv_prep" runat="server" ErrorMessage="  Please Enter information!" ControlToValidate="preparationTextBox"></asp:RequiredFieldValidator></td>                           
                </tr>
                     <tr>
                            <td class="title">Notes:</td>
                            <td class="cell"><asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' Width="220px" /></td>                            
                            <td></td>                           
                </tr>
                
                    <caption>
                        <br />
                        <tr class="button">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" BackColor="green" CausesValidation="True" CommandName="Update" Text="Update" />
                            </td>
                            <td class="auto-style3">
                                <asp:Button ID="UpdateCancelButton" runat="server" BackColor="green" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td></td>
                        </tr>
                    </caption>
                    </table>
               
          
            </EditItemTemplate>
            <InsertItemTemplate>
                recipe_name:
                <asp:TextBox ID="recipe_nameTextBox" runat="server" Text='<%# Bind("recipe_name") %>' />
                <br />
                submitted_by:
                <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' />
                <br />
                ing_1:
                <asp:TextBox ID="ing_1TextBox" runat="server" Text='<%# Bind("ing_1") %>' />
                <br />
                ing_2:
                <asp:TextBox ID="ing_2TextBox" runat="server" Text='<%# Bind("ing_2") %>' />
                <br />
                ing_3:
                <asp:TextBox ID="ing_3TextBox" runat="server" Text='<%# Bind("ing_3") %>' />
                <br />
                ing_4:
                <asp:TextBox ID="ing_4TextBox" runat="server" Text='<%# Bind("ing_4") %>' />
                <br />
                ing_5:
                <asp:TextBox ID="ing_5TextBox" runat="server" Text='<%# Bind("ing_5") %>' />
                <br />
                preparation:
                <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                <br />
                notes:
                <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table>
                 <tr>
                           <td class="recipetitle1">Recipe</td>   
                            <td class="recipetitle2">Details:</td>                       
                    </tr>
                <tr>
                            <td class="title">Recipe Name:</td>
                            <td class="cell"> <asp:Label ID="recipe_nameLabel" runat="server" Text='<%# Bind("recipe_name") %>' /> </td>                            
                            <td> </td>                           
                </tr>

                     <tr>
                            <td class="title">Submitted By:</td>
                            <td class="cell"> <asp:Label ID="submitted_byLabel" runat="server" Text='<%# Bind("submitted_by") %>' /> </td>                            
                            <td> </td>                           
                </tr>

                    <tr>
                            <td class="title">Ingredient#1:</td>
                            <td class="cell"><asp:Label ID="ing_1Label" runat="server" Text='<%# Bind("ing_1") %>' /> </td>                            
                            <td></td>                           
                </tr>

                 <tr>
                            <td class="title">Ingredient#2:</td>
                            <td class="cell"><asp:Label ID="ing_2Label" runat="server" Text='<%# Bind("ing_2") %>' /></td>                            
                            <td></td>                           
               </tr>
                
                <tr>
                            <td class="title">Ingredient#3:</td>
                            <td class="cell"><asp:Label ID="ing_3Label" runat="server" Text='<%# Bind("ing_3") %>' /></td>                            
                            <td></td>                           
               </tr>
                
                <tr>
                            <td class="title">Ingredient#4:</td>
                            <td class="cell"><asp:Label ID="ing_4Label" runat="server" Text='<%# Bind("ing_4") %>' /></td>                            
                            <td></td>                           
               </tr>

                  <tr>
                            <td class="title">Ingredient#5:</td>
                            <td class="cell"><asp:Label ID="ing_5Label" runat="server" Text='<%# Bind("ing_5") %>' /></td>                            
                            <td></td>                           
               </tr>

                  <tr>
                            <td class="title">preparation:</td>
                            <td class="cell"><asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation") %>' /></td>                            
                            <td></td>                           
               </tr>
                
               
                   <tr>
                            <td class="title">Notes:</td>
                            <td class="cell"> <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' /></td>                            
                            <td></td>  
                       </tr>
                                         
              <tr class="button">
                            <td ><asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" BackColor="green"/></td>
                            <td><asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"  BackColor="green" /></td>                            
                            <td></td>  
                       </tr>
                
          </table>
                
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
     <div class="foot">
            © 2014 6k:183- Software Development &amp; Design</div>
        <p>&nbsp;</p> <br />
</body>
</html>
