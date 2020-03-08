<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="BorrrowBook.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td colspan="7" 
                style="text-align: center; font-weight: 700; font-size: large; text-decoration: underline">
                تعديل الجداول</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Book" Width="105px" 
                    PostBackUrl="~/Book.aspx" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Auther" Width="105px" 
                    PostBackUrl="~/Author.aspx" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Book  Auther" Width="105px" 
                    PostBackUrl="~/book and Author.aspx" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Publisher" Width="105px" 
                    PostBackUrl="~/Publisher.aspx" />
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Book Publisher" Width="105px" 
                    PostBackUrl="~/Book and Publisher.aspx" />
            </td>
            <td>
                <asp:Button ID="Button6" runat="server" Text="Employee" Width="105px" 
                    PostBackUrl="~/employee.aspx" />
            </td>
            <td>
                <asp:Button ID="Button7" runat="server" Text="Book Employee" Width="105px" 
                    PostBackUrl="~/Book and Employee .aspx"  />

                                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button8" runat="server" Text="Key Word" Width="105px" 
                    PostBackUrl="~/Key Word.aspx" />
            </td>
            <td>
                <asp:Button ID="Button9" runat="server" Text="Book Key Word" Width="105px" 
                    PostBackUrl="~/Book and Key Word.aspx" />
                    
            </td>
            <td>
                <asp:Button ID="Button10" runat="server" Text="Borrower" Width="105px" 
                    PostBackUrl="~/borrower.aspx" />
            </td>
            <td>
                <asp:Button ID="Button11" runat="server" Text="Book Borrower" Width="105px" 
                    PostBackUrl="~/Book and Borrower.aspx" />
            </td>
            <td>
                <asp:Button ID="Button12" runat="server" Text="Contact" Width="105px" 
                    PostBackUrl="~/contacts.aspx" />
            </td>
            <td>
                <asp:Button ID="Button13" runat="server" Text="Adress" Width="105px" 
                    PostBackUrl="~/Adress.aspx" />
            </td>
            <td>
                <asp:Button ID="Button24" runat="server" Text="E-Adress" Width="105px" 
                    PostBackUrl="~/Eadress.aspx" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button25" runat="server" Text="SubClassification" 
                    Width="105px" PostBackUrl="~/SubClassification.aspx" />
            </td>
            <td>
                <asp:Button ID="Button26" runat="server" Text="Classification" Width="105px" 
                    PostBackUrl="~/Classification.aspx" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="7" 
                style="font-weight: 700; text-align: center; font-size: large; text-decoration: underline">
                الواجهة</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button14" runat="server" Text="Book Auther" 
                    PostBackUrl="~/Book_Author.aspx" Width="105px" />
            </td>
            <td>
                <asp:Button ID="Button17" runat="server" Text=" Key Word Book" Width="105px" 
                    PostBackUrl="~/Book_Key Word.aspx" />
            </td>
            <td>
                <asp:Button ID="Button22" runat="server" Text="Employee Book" 
                    PostBackUrl="~/Book_Employee.aspx" Width="105px" />
            </td>
            <td>
                <asp:Button ID="Button21" runat="server" Text="Publisher book" 
                    PostBackUrl="~/Book_Publisher.aspx" Width="105px" />
            </td>
            <td>
                <asp:Button ID="Button20" runat="server" Text="BorrDelivering" 
                    PostBackUrl="~/BorrDelivering.aspx" Width="105px" /> 
                   
            </td>
            <td>
                <asp:Button ID="Button19" runat="server" Text="Borrowing" 
                    PostBackUrl="~/borrowing.aspx" Width="105px" />
            </td>
            <td>
                <asp:Button ID="Button18" runat="server" Text="InsertClass" 
                    PostBackUrl="~/InsertClass.aspx" Width="105px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button23" runat="server" Text="InsertSubClass" 
                    PostBackUrl="~/InsertSubClass.aspx" Width="105px" />
            </td>
            <td>
                <asp:Button ID="Button16" runat="server" Text="Class. Book" 
                    PostBackUrl="~/Class. Book.aspx" Width="105px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
