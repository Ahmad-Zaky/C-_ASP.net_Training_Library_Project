<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Book_Key Word.aspx.cs" Inherits="BorrrowBook.Book_Key_Word" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 448px;
            width: 797px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style10">
                ID Of Book :</td>
            <td class="style11">
                <asp:TextBox ID="number_of_book" runat="server" style="direction: ltr"></asp:TextBox>
                <asp:Button ID="search" runat="server" onclick="search_Click" Text="Search" />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Label ID="id_book" runat="server"></asp:Label>
            </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style2">
                The Name Book :</td>
            <td class="style5">
                <asp:TextBox ID="name_of_book" runat="server"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Enter The Key Word :<br />
                <br />
                The location :<br />
                <br />
            </td>
            <td class="style5">
                
                <br />
                
                <asp:TextBox ID="key_word" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="location" runat="server" Width="150px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="save" runat="server" onclick="save_Click" 
                    style="margin-bottom: 0px" Text="Save" />
                &nbsp; <asp:Button ID="new" runat="server" onclick="new_Click" Text="New" />
                &nbsp;
                <asp:Button ID="delete" runat="server" onclick="delete_Click" Text="Delete" />
                <br />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" Height="113px" Width="126px"></asp:ListBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style7">
                ID Key Word:
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;<asp:Button ID="select" runat="server" onclick="select_Click" Text="Search" 
                    style="height: 26px" />
                <asp:TextBox ID="id" runat="server" Width="52px"></asp:TextBox>
                
                <asp:Label ID="Label4" runat="server"></asp:Label>
                
            </td>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="ID Book &amp; ID Key Word" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="contentof" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="time" runat="server"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>