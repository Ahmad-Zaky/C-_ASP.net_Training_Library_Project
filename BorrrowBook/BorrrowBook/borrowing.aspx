<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="borrowing.aspx.cs" Inherits="BorrrowBook.borrowing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <%--<style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 70px;
        }
        .style3
        {
            width: 42px;
        }
        .style4
        {
            width: 283px;
        }
    </style>--%>
    <style type="text/css">
        .style1
        {
            width: 347px;
        }
        .style2
        {
            width: 64px;
        }
        .style3
        {
            width: 69px;
        }
        .style4
        {
            width: 120px;
        }
        .style5
        {
            width: 64px;
            height: 28px;
        }
        .style6
        {
            width: 69px;
            height: 28px;
        }
        .style7
        {
            width: 120px;
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="بحث" onclick="Button1_Click" />
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style4" style="text-align: right">
                رقم الكتاب:
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="style4" style="text-align: right">
                اسم الكتاب :</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="بحث" />
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="style7" style="text-align: right">
                رقم المستعير:</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="style4" style="text-align: right">
                اسم المستعير:</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button3" runat="server" Text="حفظ" onclick="Button2_Click" />
            </td>
            <td class="style4" style="text-align: right">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
