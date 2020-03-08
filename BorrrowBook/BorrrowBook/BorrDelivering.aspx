<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BorrDelivering.aspx.cs" Inherits="BorrrowBook.BorrDelivering" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <%--<style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>--%>
    <style type="text/css">
        .style1
        {
            text-align: right;
            height: 172px;
            width: 560px;
        }
        .style9
        {
            width: 56px;
        }
        .style11
        {
            width: 187px;
            text-align: center;
        }
        .style13
        {
            width: 78px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" Text="بحث" onclick="Button1_Click" 
                    style="height: 26px" />
            </td>
            <td class="style11">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style13">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                رقم المستعير :</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style11">
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style13">
                &nbsp;</td>
            <td>
                اسم المستعير :</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style13">
                &nbsp;</td>
            <td style="text-align: right">
                الكتب التى استعاره</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" 
                    Text="&gt;&gt;" onclick="Button2_Click" />
                <br />
                &nbsp;الكتاب الذى تم ارجاعه.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;
            </td>
            <td class="style13">
                <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
            </td>
            <td style="text-align: left">
                <asp:Button ID="Button3" runat="server" style="text-align: left" Text="حفظ" 
                    onclick="Button3_Click" />
&nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
