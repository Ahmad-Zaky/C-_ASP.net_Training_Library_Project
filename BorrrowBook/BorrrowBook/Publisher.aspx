<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Publisher.aspx.cs" Inherits="BorrrowBook.Publisher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="id" 
        DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
        Height="50px" Width="125px">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name_publisher" HeaderText="name_publisher" 
                SortExpression="name_publisher" />
            <asp:BoundField DataField="adress" HeaderText="adress" 
                SortExpression="adress" />
            <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
            <asp:BoundField DataField="e_mail" HeaderText="e_mail" 
                SortExpression="e_mail" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:borrowDB3ConnectionString %>" 
        DeleteCommand="DELETE FROM [Publisher] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Publisher] ([name_publisher], [adress], [URL], [e_mail], [year]) VALUES (@name_publisher, @adress, @URL, @e_mail, @year)" 
        SelectCommand="SELECT * FROM [Publisher] ORDER BY [id]" 
        UpdateCommand="UPDATE [Publisher] SET [name_publisher] = @name_publisher, [adress] = @adress, [URL] = @URL, [e_mail] = @e_mail, [year] = @year WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name_publisher" Type="String" />
            <asp:Parameter Name="adress" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
            <asp:Parameter Name="e_mail" Type="String" />
            <asp:Parameter DbType="Date" Name="year" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name_publisher" Type="String" />
            <asp:Parameter Name="adress" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
            <asp:Parameter Name="e_mail" Type="String" />
            <asp:Parameter DbType="Date" Name="year" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
