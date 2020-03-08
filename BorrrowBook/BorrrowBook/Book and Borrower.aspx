<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book and Borrower.aspx.cs" Inherits="BorrrowBook.WebForm9" %>
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
            <asp:BoundField DataField="id_borrower" HeaderText="id_borrower" 
                SortExpression="id_borrower" />
            <asp:BoundField DataField="id_book" HeaderText="id_book" 
                SortExpression="id_book" />
            <asp:BoundField DataField="from_" HeaderText="from_" SortExpression="from_" />
            <asp:BoundField DataField="to_" HeaderText="to_" SortExpression="to_" />
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
        DeleteCommand="DELETE FROM [Bw_Bk] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Bw_Bk] ([id_borrower], [id_book], [from_], [to_]) VALUES (@id_borrower, @id_book, @from_, @to_)" 
        SelectCommand="SELECT * FROM [Bw_Bk] ORDER BY [id]" 
        UpdateCommand="UPDATE [Bw_Bk] SET [id_borrower] = @id_borrower, [id_book] = @id_book, [from_] = @from_, [to_] = @to_ WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_borrower" Type="Int32" />
            <asp:Parameter Name="id_book" Type="Int32" />
            <asp:Parameter Name="from_" Type="String" />
            <asp:Parameter Name="to_" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_borrower" Type="Int32" />
            <asp:Parameter Name="id_book" Type="Int32" />
            <asp:Parameter Name="from_" Type="String" />
            <asp:Parameter Name="to_" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
