﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecordsConnectionString %>" ProviderName="<%$ ConnectionStrings:RecordsConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Info]" UpdateCommand="UPDATE[Info] SET [Fullname]=@Fullname,[Username]=@Username,[Password]=@Password where [id]=@id" DeleteCommand="DELETE from[Info] where [id]=@id"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Vertical" ShowFooter="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton  ValidationGroup="foot"  ID="LinkButton1" runat="server" ForeColor="Red" OnClick="LinkButton1_Click">Insert</asp:LinkButton>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fullname" SortExpression="Fullname">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Fullname") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter your Fullname" ControlToValidate="TextBox1" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="foot" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter your Fullname" ControlToValidate="name" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Fullname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Username" SortExpression="Username">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Username") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter your Username" ControlToValidate="TextBox2" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="user" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator  ValidationGroup="foot" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter your Username" ControlToValidate="user" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Username") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password" SortExpression="Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please Enter your Password" ControlToValidate="TextBox3" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="pass" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator  ValidationGroup="foot"  ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter your Password" ControlToValidate="pass" ForeColor="Red" SetFocusOnError="True" Display="Dynamic" Text="*"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
        <asp:ValidationSummary  ValidationGroup="foot" ID="ValidationSummary1" runat="server"  ForeColor="Red"/>
        <asp:ValidationSummary ID="ValidationSummary2" runat="server"  ForeColor="Red"/>
    </form>
</body>
</html>
