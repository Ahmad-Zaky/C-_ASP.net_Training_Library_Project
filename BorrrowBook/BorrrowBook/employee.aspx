<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="BorrrowBook.Person" %>
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
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="gender" HeaderText="gender" 
                SortExpression="gender" />
            <asp:BoundField DataField="birth_day" HeaderText="birth_day" 
                SortExpression="birth_day" />
            <asp:BoundField DataField="date_of_employment" HeaderText="date_of_employment" 
                SortExpression="date_of_employment" />
            <asp:BoundField DataField="named_job" HeaderText="named_job" 
                SortExpression="named_job" />
            <asp:BoundField DataField="status_employee" HeaderText="status_employee" 
                SortExpression="status_employee" />
            <asp:BoundField DataField="degree" HeaderText="degree" 
                SortExpression="degree" />
            <asp:BoundField DataField="date_of_get_degree" HeaderText="date_of_get_degree" 
                SortExpression="date_of_get_degree" />
            <asp:BoundField DataField="qualification" HeaderText="qualification" 
                SortExpression="qualification" />
            <asp:BoundField DataField="graduation_date" HeaderText="graduation_date" 
                SortExpression="graduation_date" />
            <asp:BoundField DataField="date_of_get_graduation" 
                HeaderText="date_of_get_graduation" SortExpression="date_of_get_graduation" />
            <asp:BoundField DataField="sociaty_state" HeaderText="sociaty_state" 
                SortExpression="sociaty_state" />
            <asp:BoundField DataField="religion" HeaderText="religion" 
                SortExpression="religion" />
            <asp:BoundField DataField="natiionality" HeaderText="natiionality" 
                SortExpression="natiionality" />
            <asp:BoundField DataField="actual_studies" HeaderText="actual_studies" 
                SortExpression="actual_studies" />
            <asp:BoundField DataField="free_days" HeaderText="free_days" 
                SortExpression="free_days" />
            <asp:BoundField DataField="assurance" HeaderText="assurance" 
                SortExpression="assurance" />
            <asp:BoundField DataField="courses" HeaderText="courses" 
                SortExpression="courses" />
            <asp:BoundField DataField="place_of_courses" HeaderText="place_of_courses" 
                SortExpression="place_of_courses" />
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
        DeleteCommand="DELETE FROM [employee] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [employee] ([name], [gender], [birth_day], [date_of_employment], [named_job], [status_employee], [degree], [date_of_get_degree], [qualification], [graduation_date], [date_of_get_graduation], [sociaty_state], [religion], [natiionality], [actual_studies], [free_days], [assurance], [courses], [place_of_courses]) VALUES (@name, @gender, @birth_day, @date_of_employment, @named_job, @status_employee, @degree, @date_of_get_degree, @qualification, @graduation_date, @date_of_get_graduation, @sociaty_state, @religion, @natiionality, @actual_studies, @free_days, @assurance, @courses, @place_of_courses)" 
        SelectCommand="SELECT * FROM [employee] ORDER BY [id]" 
        UpdateCommand="UPDATE [employee] SET [name] = @name, [gender] = @gender, [birth_day] = @birth_day, [date_of_employment] = @date_of_employment, [named_job] = @named_job, [status_employee] = @status_employee, [degree] = @degree, [date_of_get_degree] = @date_of_get_degree, [qualification] = @qualification, [graduation_date] = @graduation_date, [date_of_get_graduation] = @date_of_get_graduation, [sociaty_state] = @sociaty_state, [religion] = @religion, [natiionality] = @natiionality, [actual_studies] = @actual_studies, [free_days] = @free_days, [assurance] = @assurance, [courses] = @courses, [place_of_courses] = @place_of_courses WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter DbType="Date" Name="birth_day" />
            <asp:Parameter DbType="Date" Name="date_of_employment" />
            <asp:Parameter Name="named_job" Type="String" />
            <asp:Parameter Name="status_employee" Type="String" />
            <asp:Parameter Name="degree" Type="String" />
            <asp:Parameter DbType="Date" Name="date_of_get_degree" />
            <asp:Parameter Name="qualification" Type="String" />
            <asp:Parameter DbType="Date" Name="graduation_date" />
            <asp:Parameter DbType="Date" Name="date_of_get_graduation" />
            <asp:Parameter Name="sociaty_state" Type="String" />
            <asp:Parameter Name="religion" Type="String" />
            <asp:Parameter Name="natiionality" Type="String" />
            <asp:Parameter Name="actual_studies" Type="String" />
            <asp:Parameter Name="free_days" Type="String" />
            <asp:Parameter Name="assurance" Type="String" />
            <asp:Parameter Name="courses" Type="String" />
            <asp:Parameter Name="place_of_courses" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter DbType="Date" Name="birth_day" />
            <asp:Parameter DbType="Date" Name="date_of_employment" />
            <asp:Parameter Name="named_job" Type="String" />
            <asp:Parameter Name="status_employee" Type="String" />
            <asp:Parameter Name="degree" Type="String" />
            <asp:Parameter DbType="Date" Name="date_of_get_degree" />
            <asp:Parameter Name="qualification" Type="String" />
            <asp:Parameter DbType="Date" Name="graduation_date" />
            <asp:Parameter DbType="Date" Name="date_of_get_graduation" />
            <asp:Parameter Name="sociaty_state" Type="String" />
            <asp:Parameter Name="religion" Type="String" />
            <asp:Parameter Name="natiionality" Type="String" />
            <asp:Parameter Name="actual_studies" Type="String" />
            <asp:Parameter Name="free_days" Type="String" />
            <asp:Parameter Name="assurance" Type="String" />
            <asp:Parameter Name="courses" Type="String" />
            <asp:Parameter Name="place_of_courses" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
