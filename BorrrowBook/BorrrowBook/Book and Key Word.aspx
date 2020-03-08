<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book and Key Word.aspx.cs" Inherits="BorrrowBook.Book_and_Key_Word" %>
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
            <asp:BoundField DataField="id_book" HeaderText="id_book" 
                SortExpression="id_book" />
            <asp:BoundField DataField="id_kw" HeaderText="id_kw" SortExpression="id_kw" />
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
        DeleteCommand="DELETE FROM [B_K] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [B_K] ([id_book], [id_kw]) VALUES (@id_book, @id_kw)" 
        SelectCommand="SELECT * FROM [B_K] ORDER BY [id]" 
        UpdateCommand="UPDATE [B_K] SET [id_book] = @id_book, [id_kw] = @id_kw WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_book" Type="Int32" />
            <asp:Parameter Name="id_kw" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_book" Type="Int32" />
            <asp:Parameter Name="id_kw" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
