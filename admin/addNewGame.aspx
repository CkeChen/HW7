<%@ Page Title="" Language="VB" MasterPageFile="~/Games.master" AutoEventWireup="false" CodeFile="addNewGame.aspx.vb" Inherits="admin_addNewGame" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g5ConnectionString %>" DeleteCommand="DELETE FROM [HW7-Kchen3] WHERE [Game_ID] = @Game_ID" InsertCommand="INSERT INTO [HW7-Kchen3] ([Game_ID], [Game_Name], [Made_By], [IGN_Rating], [Playable_Cars], [Release_Year], [Difficulties]) VALUES (@Game_ID, @Game_Name, @Made_By, @IGN_Rating, @Playable_Cars, @Release_Year, @Difficulties)" SelectCommand="SELECT [Game_ID], [Game_Name], [Made_By], [IGN_Rating], [Playable_Cars], [Release_Year], [Difficulties] FROM [HW7-Kchen3]" UpdateCommand="UPDATE [HW7-Kchen3] SET [Game_Name] = @Game_Name, [Made_By] = @Made_By, [IGN_Rating] = @IGN_Rating, [Playable_Cars] = @Playable_Cars, [Release_Year] = @Release_Year, [Difficulties] = @Difficulties WHERE [Game_ID] = @Game_ID">
        <DeleteParameters>
            <asp:Parameter Name="Game_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Game_ID" Type="Int32" />
            <asp:Parameter Name="Game_Name" Type="String" />
            <asp:Parameter Name="Made_By" Type="String" />
            <asp:Parameter Name="IGN_Rating" Type="String" />
            <asp:Parameter Name="Playable_Cars" Type="String" />
            <asp:Parameter Name="Release_Year" Type="Int32" />
            <asp:Parameter Name="Difficulties" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Game_Name" Type="String" />
            <asp:Parameter Name="Made_By" Type="String" />
            <asp:Parameter Name="IGN_Rating" Type="String" />
            <asp:Parameter Name="Playable_Cars" Type="String" />
            <asp:Parameter Name="Release_Year" Type="Int32" />
            <asp:Parameter Name="Difficulties" Type="String" />
            <asp:Parameter Name="Game_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Game_ID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Game_ID" HeaderText="Game_ID" ReadOnly="True" SortExpression="Game_ID" />
            <asp:BoundField DataField="Game_Name" HeaderText="Game_Name" SortExpression="Game_Name" />
            <asp:BoundField DataField="Made_By" HeaderText="Made_By" SortExpression="Made_By" />
            <asp:BoundField DataField="IGN_Rating" HeaderText="IGN_Rating" SortExpression="IGN_Rating" />
            <asp:BoundField DataField="Playable_Cars" HeaderText="Playable_Cars" SortExpression="Playable_Cars" />
            <asp:BoundField DataField="Release_Year" HeaderText="Release_Year" SortExpression="Release_Year" />
            <asp:BoundField DataField="Difficulties" HeaderText="Difficulties" SortExpression="Difficulties" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>

