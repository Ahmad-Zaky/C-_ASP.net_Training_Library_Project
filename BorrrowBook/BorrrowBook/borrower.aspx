<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="borrower.aspx.cs" Inherits="BorrrowBook.borrower" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
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
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="birth_day" HeaderText="birth_day" 
                SortExpression="birth_day" />
            <asp:BoundField DataField="adress" HeaderText="adress" 
                SortExpression="adress" />
            <asp:BoundField DataField="e_mail" HeaderText="e_mail" 
                SortExpression="e_mail" />
            <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
            <asp:BoundField DataField="m_phone" HeaderText="m_phone" 
                SortExpression="m_phone" />
            <asp:BoundField DataField="h_phone" HeaderText="h_phone" 
                SortExpression="h_phone" />
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
        DeleteCommand="DELETE FROM [Borrower] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Borrower] ([id], [name], [gender], [birth_day], [adress], [e_mail], [URL], [m_phone], [h_phone]) VALUES (@id, @name, @gender, @birth_day, @adress, @e_mail, @URL, @m_phone, @h_phone)" 
        SelectCommand="SELECT * FROM [Borrower] ORDER BY [id]" 
        UpdateCommand="UPDATE [Borrower] SET [name] = @name, [gender] = @gender, [birth_day] = @birth_day, [adress] = @adress, [e_mail] = @e_mail, [URL] = @URL, [m_phone] = @m_phone, [h_phone] = @h_phone WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter DbType="Date" Name="birth_day" />
            <asp:Parameter Name="adress" Type="String" />
            <asp:Parameter Name="e_mail" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
            <asp:Parameter Name="m_phone" Type="Int32" />
            <asp:Parameter Name="h_phone" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter DbType="Date" Name="birth_day" />
            <asp:Parameter Name="adress" Type="String" />
            <asp:Parameter Name="e_mail" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
            <asp:Parameter Name="m_phone" Type="Int32" />
            <asp:Parameter Name="h_phone" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   </asp:Content>
