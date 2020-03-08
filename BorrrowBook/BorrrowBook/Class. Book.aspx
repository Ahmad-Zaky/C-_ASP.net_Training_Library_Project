<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Class. Book.aspx.cs" Inherits="BorrrowBook.key_word_book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <%--<style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 369px;
        }
        .style3
        {
            width: 278px;
        }
        .style4
        {
            width: 254px;
        }
        .style5
        {
            width: 334px;
        }
    </style>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    &nbsp;<table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="بحث" onclick="Button3_Click" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="186px"></asp:TextBox>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                رقم الكتاب :</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Height="16px" 
                    Width="190px">
                </asp:DropDownList>
            </td>
            <td>
                تصنيف اساسى :</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" Height="20px" 
                    Width="190px">
                </asp:DropDownList>
            </td>
            <td>
                تصنيف فرعى :</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    Height="16px" Width="190px">
                </asp:DropDownList>
            </td>
            <td>
                اسم الكتاب :</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Button ID="Button6" runat="server" Text="اضافة" onclick="Button6_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                <asp:ListBox ID="ListBox1" runat="server" Height="93px"></asp:ListBox>
            </td>
            <td class="style3">
                <asp:Button ID="Button4" runat="server" Text="&gt;&gt;" 
                    onclick="Button4_Click" />
                <br />
                <br />
                <asp:Button ID="Button8" runat="server" Text="&lt;&lt;" onclick="Button8_Click" 
                    style="height: 26px" />
                <br />
            </td>
            <td class="style4">
&nbsp;<asp:ListBox ID="ListBox2" runat="server" Height="87px"></asp:ListBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                &nbsp;الكلمات المفتاحية :&nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button7" runat="server" Text="حفظ" onclick="Button7_Click" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
