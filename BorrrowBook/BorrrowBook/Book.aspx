<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="BorrrowBook.WebForm2" %>
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
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                SortExpression="id" />
            <asp:BoundField DataField="local_number" HeaderText="local_number" 
                SortExpression="local_number" />
            <asp:BoundField DataField="ISPN" HeaderText="ISPN" SortExpression="ISPN" />
            <asp:BoundField DataField="name_book" HeaderText="name_book" 
                SortExpression="name_book" />
            <asp:BoundField DataField="URL" HeaderText="URL" SortExpression="URL" />
            <asp:BoundField DataField="id_type" HeaderText="id_type" 
                SortExpression="id_type" />
            <asp:BoundField DataField="id_subtype" HeaderText="id_subtype" 
                SortExpression="id_subtype" />
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
        DeleteCommand="DELETE FROM [Book] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Book] ([id], [local_number], [ISPN], [name_book], [URL], [id_type], [id_subtype]) VALUES (@id, @local_number, @ISPN, @name_book, @URL, @id_type, @id_subtype)" 
        SelectCommand="SELECT * FROM [Book] ORDER BY [id]" 
        UpdateCommand="UPDATE [Book] SET [local_number] = @local_number, [ISPN] = @ISPN, [name_book] = @name_book, [URL] = @URL, [id_type] = @id_type, [id_subtype] = @id_subtype WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="local_number" Type="Int32" />
            <asp:Parameter Name="ISPN" Type="Int32" />
            <asp:Parameter Name="name_book" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
            <asp:Parameter Name="id_type" Type="Int32" />
            <asp:Parameter Name="id_subtype" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="local_number" Type="Int32" />
            <asp:Parameter Name="ISPN" Type="Int32" />
            <asp:Parameter Name="name_book" Type="String" />
            <asp:Parameter Name="URL" Type="String" />
            <asp:Parameter Name="id_type" Type="Int32" />
            <asp:Parameter Name="id_subtype" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
