﻿<form id="form1" runat="server">
    <asp:SqlDataSource ID="Sql_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_xiaochxu_hw6 %>" SelectCommand="SELECT * FROM [xiaochxu_hw6]"></asp:SqlDataSource>
    <h1>Wicked Easy Recipes</h1>
        <h3>Using 5 Ingedients or Less!</h3>
        <h3>Home | New Recipe | About Us | Contact</h3>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="Sql_DataSource" DefaultMode="Edit">
            <EditItemTemplate>
             <table>
                        <tr>
                            <td>
                                Recipe Name:
                            </td>
                            <td>
                             <asp:TextBox ID="recipe_nameTextbox" runat="server" Text='<%# Bind("recipe_name")%>' />
                            
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="rfv_recipeName" runat="server" ErrorMessage="Please Enter a Recipe Name!" ControlToValidate="recipe_nameTextbox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                         <tr>
                            <td>
                                Submitted By:
                            </td>
                            <td>
                                <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' />
                            </td>
                             <td>
                                <asp:RequiredFieldValidator ID="rfv_submittedby" runat="server" ErrorMessage="Please Enter Your Name!" ControlToValidate="submitted_byTextBox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        
                         <tr>
                            <td>
                                Ingredient #1:
                            </td>
                            <td>
                                <asp:TextBox ID="ing_1TextBox" runat="server" Text='<%# Bind("ing_1") %>' />
                            </td>
                              <td>
                                <asp:RequiredFieldValidator ID="rfv_ing1" runat="server" ErrorMessage="Please Enter at Least One Ingredient!" ControlToValidate="ing_1Textbox"></asp:RequiredFieldValidator>
                            </td>

                        </tr>

                         <tr>
                            <td>
                                Ingredient #2:
                            </td>
                            <td>
                                 <asp:TextBox ID="ing_2TextBox" runat="server" Text='<%# Bind("ing_2") %>' />
                            </td>
                        </tr>

                          <tr>
                            <td>
                                Ingredient #3:
                            </td>
                            <td>
                                 <asp:TextBox ID="ing_3TextBox" runat="server" Text='<%# Bind("ing_3") %>' />
                            </td>
                        </tr>

                         <tr>
                            <td>
                                Ingredient #4:
                            </td>
                            <td>
                                 <asp:TextBox ID="ing_4TextBox" runat="server" Text='<%# Bind("ing_4") %>' />
                            </td>
                        </tr>

                           <tr>
                            <td>
                                Ingredient #5:
                            </td>
                            <td>
                               <asp:TextBox ID="ing_5TextBox" runat="server" Text='<%# Bind("ing_5") %>' />
                            </td>
                        </tr>

                           <tr>
                            <td>
                                 Preparation:
                            </td>
                            <td>
                                 <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                            </td>
                               <td>
                                <asp:RequiredFieldValidator ID="rvf_preparation" runat="server" ErrorMessage="Please Tell Us How To prepare!" ControlToValidate="preparationTextbox"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        
                           <tr>
                            <td>
                                 Notes:
                            </td>
                            <td>
                                 <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
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
                            <td>
                            <asp:Button ID="btn_insert" runat="server" CausesValidation="true" CommandName="insert" Text="Save" />
                            </td>
                        </tr>
                    </table>
          
            </EditItemTemplate>
           
            <ItemTemplate>
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                recipe_name:
                <asp:Label ID="recipe_nameLabel" runat="server" Text='<%# Bind("recipe_name") %>' />
                <br />
                submitted_by:
                <asp:Label ID="submitted_byLabel" runat="server" Text='<%# Bind("submitted_by") %>' />
                <br />
                ing_1:
                <asp:Label ID="ing_1Label" runat="server" Text='<%# Bind("ing_1") %>' />
                <br />
                ing_2:
                <asp:Label ID="ing_2Label" runat="server" Text='<%# Bind("ing_2") %>' />
                <br />
                ing_3:
                <asp:Label ID="ing_3Label" runat="server" Text='<%# Bind("ing_3") %>' />
                <br />
                ing_4:
                <asp:Label ID="ing_4Label" runat="server" Text='<%# Bind("ing_4") %>' />
                <br />
                ing_5:
                <asp:Label ID="ing_5Label" runat="server" Text='<%# Bind("ing_5") %>' />
                <br />
                preparation:
                <asp:Label ID="preparationLabel" runat="server" Text='<%# Bind("preparation") %>' />
                <br />
                notes:
                <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    </p>
</form>