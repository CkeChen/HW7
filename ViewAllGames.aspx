<%@ Page Title="" Language="VB" MasterPageFile="~/Games.master" AutoEventWireup="false" CodeFile="ViewAllGames.aspx.vb" Inherits="ViewAllGames" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Best! - View All Games
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:msci3300_g5ConnectionString %>" DeleteCommand="DELETE FROM [HW7-Kchen3] WHERE [Game_ID] = @original_Game_ID AND (([Game_Name] = @original_Game_Name) OR ([Game_Name] IS NULL AND @original_Game_Name IS NULL)) AND (([Made_By] = @original_Made_By) OR ([Made_By] IS NULL AND @original_Made_By IS NULL)) AND (([IGN_Rating] = @original_IGN_Rating) OR ([IGN_Rating] IS NULL AND @original_IGN_Rating IS NULL)) AND (([Playable_Cars] = @original_Playable_Cars) OR ([Playable_Cars] IS NULL AND @original_Playable_Cars IS NULL)) AND (([Release_Year] = @original_Release_Year) OR ([Release_Year] IS NULL AND @original_Release_Year IS NULL)) AND (([Difficulties] = @original_Difficulties) OR ([Difficulties] IS NULL AND @original_Difficulties IS NULL))" InsertCommand="INSERT INTO [HW7-Kchen3] ([Game_ID], [Game_Name], [Made_By], [IGN_Rating], [Playable_Cars], [Release_Year], [Difficulties]) VALUES (@Game_ID, @Game_Name, @Made_By, @IGN_Rating, @Playable_Cars, @Release_Year, @Difficulties)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Game_ID], [Game_Name], [Made_By], [IGN_Rating], [Playable_Cars], [Release_Year], [Difficulties] FROM [HW7-Kchen3]" UpdateCommand="UPDATE [HW7-Kchen3] SET [Game_Name] = @Game_Name, [Made_By] = @Made_By, [IGN_Rating] = @IGN_Rating, [Playable_Cars] = @Playable_Cars, [Release_Year] = @Release_Year, [Difficulties] = @Difficulties WHERE [Game_ID] = @original_Game_ID AND (([Game_Name] = @original_Game_Name) OR ([Game_Name] IS NULL AND @original_Game_Name IS NULL)) AND (([Made_By] = @original_Made_By) OR ([Made_By] IS NULL AND @original_Made_By IS NULL)) AND (([IGN_Rating] = @original_IGN_Rating) OR ([IGN_Rating] IS NULL AND @original_IGN_Rating IS NULL)) AND (([Playable_Cars] = @original_Playable_Cars) OR ([Playable_Cars] IS NULL AND @original_Playable_Cars IS NULL)) AND (([Release_Year] = @original_Release_Year) OR ([Release_Year] IS NULL AND @original_Release_Year IS NULL)) AND (([Difficulties] = @original_Difficulties) OR ([Difficulties] IS NULL AND @original_Difficulties IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Game_ID" Type="Int32" />
                <asp:Parameter Name="original_Game_Name" Type="String" />
                <asp:Parameter Name="original_Made_By" Type="String" />
                <asp:Parameter Name="original_IGN_Rating" Type="String" />
                <asp:Parameter Name="original_Playable_Cars" Type="String" />
                <asp:Parameter Name="original_Release_Year" Type="Int32" />
                <asp:Parameter Name="original_Difficulties" Type="String" />
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
                <asp:Parameter Name="original_Game_ID" Type="Int32" />
                <asp:Parameter Name="original_Game_Name" Type="String" />
                <asp:Parameter Name="original_Made_By" Type="String" />
                <asp:Parameter Name="original_IGN_Rating" Type="String" />
                <asp:Parameter Name="original_Playable_Cars" Type="String" />
                <asp:Parameter Name="original_Release_Year" Type="Int32" />
                <asp:Parameter Name="original_Difficulties" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div>
    
        <asp:HiddenField ID="HiddenField1" runat="server" />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Game_ID" DataSourceID="SqlDataSource1" CssClass="gridview">
            <Columns>
                <asp:BoundField DataField="Game_Name" HeaderText="Game_Name" SortExpression="Game_Name" />
                <asp:BoundField DataField="Made_By" HeaderText="Made_By" SortExpression="Made_By" />
                <asp:BoundField DataField="Release_Year" HeaderText="Release_Year" SortExpression="Release_Year" />
                <asp:HyperLinkField DataNavigateUrlFields="Game_ID" DataNavigateUrlFormatString="GameDetail.aspx?Game_ID={0}" Text="ViewDetail" />
            </Columns>
        </asp:GridView>
</asp:Content>

