<script runat="server">

    Protected Sub FormView1_PageIndexChanging(sender As Object, e As FormViewPageEventArgs)

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>
<form id="form1" runat="server">
    <asp:SqlDataSource ID="Sql_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_xiaochxu_hw6 %>" SelectCommand="SELECT * FROM [xiaochxu_hw6] WHERE ([ID] = @ID)" DeleteCommand="DELETE FROM [xiaochxu_hw6] WHERE [ID] = @ID" InsertCommand="INSERT INTO [xiaochxu_hw6] ([recipe_name], [submitted_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @preparation, @notes)" UpdateCommand="UPDATE [xiaochxu_hw6] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [preparation] = @preparation, [notes] = @notes WHERE [ID] = @ID">
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
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
       <h1>Wicked Easy Recipes</h1>
        <h3>Using 5 Ingedients or Less!</h3>
    <ul>
		<li> <a href="./default.aspx"> Home Page</a>&nbsp&nbsp |&nbsp&nbsp<a href="./insert.aspx"> New Recipe </a>&nbsp&nbsp |&nbsp&nbsp<a href="./about.aspx"> About Us </a>&nbsp&nbsp |&nbsp&nbsp<a href="./contact.aspx"> Contact </a></li>
	</ul>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="Sql_DataSource" OnPageIndexChanging="FormView1_PageIndexChanging">
            <EditItemTemplate>
             <table>
                        <tr>
                            <td>
                                Recipe Name:
                            </td>
                            <td>
                             <asp:TextBox ID="recipe_nameTextbox" runat="server" Text='<%# Bind("recipe_name")%>' Height="28px" Width="182px" ReadOnly="True" />
                            
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
                                <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' Height="28px" Width="182px" />
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
                                <asp:TextBox ID="ing_1TextBox" runat="server" Text='<%# Bind("ing_1") %>' Height="28px" Width="182px" />
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
                                 <asp:TextBox ID="ing_2TextBox" runat="server" Text='<%# Bind("ing_2") %>' Height="28px" Width="182px" />
                            </td>
                        </tr>

                          <tr>
                            <td>
                                Ingredient #3:
                            </td>
                            <td>
                                 <asp:TextBox ID="ing_3TextBox" runat="server" Text='<%# Bind("ing_3") %>' Height="28px" Width="182px" />
                            </td>
                        </tr>

                         <tr>
                            <td>
                                Ingredient #4:
                            </td>
                            <td>
                                 <asp:TextBox ID="ing_4TextBox" runat="server" Text='<%# Bind("ing_4") %>' Height="28px" Width="182px" />
                            </td>
                        </tr>

                           <tr>
                            <td>
                                Ingredient #5:
                            </td>
                            <td>
                               <asp:TextBox ID="ing_5TextBox" runat="server" Text='<%# Bind("ing_5") %>' Height="28px" Width="182px" />
                            </td>
                        </tr>

                           <tr>
                            <td>
                                 Preparation:
                            </td>
                            <td>
                                 <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' Height="147px" TextMode="MultiLine" Width="182px" />
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
                                 <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' Height="65px" TextMode="MultiLine" Width="182px" />
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
                            <asp:Button ID="btn_edite" runat="server" ShowEditButton="True"  CommandName="edite" Text="Edite" />
                            
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
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <br />

            </ItemTemplate>
        </asp:FormView>
    </p>
</form>
