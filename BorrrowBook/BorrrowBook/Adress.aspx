<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Adress.aspx.cs" Inherits="BorrrowBook.WebForm1" %>
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
            <asp:BoundField DataField="adress" HeaderText="adress" 
                SortExpression="adress" />
            <asp:BoundField DataField="oribain" HeaderText="oribain" 
                SortExpression="oribain" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="country" HeaderText="country" 
                SortExpression="country" />
            <asp:BoundField DataField="id_employee" HeaderText="id_employee" 
                SortExpression="id_employee" />
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
        DeleteCommand="DELETE FROM [Adress] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [Adress] ([adress], [oribain], [city], [country], [id_employee]) VALUES (@adress, @oribain, @city, @country, @id_employee)" 
        SelectCommand="SELECT * FROM [Adress] ORDER BY [id]" 
        UpdateCommand="UPDATE [Adress] SET [adress] = @adress, [oribain] = @oribain, [city] = @city, [country] = @country, [id_employee] = @id_employee WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="adress" Type="String" />
            <asp:Parameter Name="oribain" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="id_employee" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="adress" Type="String" />
            <asp:Parameter Name="oribain" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="country" Type="String" />
            <asp:Parameter Name="id_employee" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
