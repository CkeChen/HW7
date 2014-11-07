<%@ Page Title="" Language="VB" MasterPageFile="~/Games.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="GameDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g5ConnectionString %>" DeleteCommand="DELETE FROM [HW7-Kchen3] WHERE [Game_ID] = @Game_ID" InsertCommand="INSERT INTO [HW7-Kchen3] ([Game_ID], [Game_Name], [Made_By], [IGN_Rating], [Playable_Cars], [Release_Year], [Difficulties]) VALUES (@Game_ID, @Game_Name, @Made_By, @IGN_Rating, @Playable_Cars, @Release_Year, @Difficulties)" SelectCommand="SELECT [Game_ID], [Game_Name], [Made_By], [IGN_Rating], [Playable_Cars], [Release_Year], [Difficulties] FROM [HW7-Kchen3]" UpdateCommand="UPDATE [HW7-Kchen3] SET [Game_Name] = @Game_Name, [Made_By] = @Made_By, [IGN_Rating] = @IGN_Rating, [Playable_Cars] = @Playable_Cars, [Release_Year] = @Release_Year, [Difficulties] = @Difficulties WHERE [Game_ID] = @Game_ID">
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Game_ID" DataSourceID="GameDataSource">
    </asp:GridView>
    <asp:Label runat="server" Text="Search for a Game by name"></asp:Label>
    <br />
    <asp:TextBox ID="tbGame" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
</asp:Content>

