<%@ Page Title="" Language="VB" MasterPageFile="~/Games.master" AutoEventWireup="false" CodeFile="GameDetail.aspx.vb" Inherits="GameDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g5ConnectionString %>" 
             SelectCommand="SELECT [Game_ID], [Game_Name], [Made_By], [IGN_Rating], [Playable_Cars], [Release_Year], [Difficulties] FROM [HW7-Kchen3] WHERE ([Game_ID] = @Game_ID)" >
            
            <SelectParameters>
                <asp:QueryStringParameter Name="Game_ID" QueryStringField="Game_ID" Type="Int32" />
            </SelectParameters>
           
        </asp:SqlDataSource>
        <br />
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Game_ID" DataSourceID="SqlDataSource1" Height="187px" Width="204px" CssClass="detailsview">
            <Fields>
                <asp:BoundField DataField="Game_ID" HeaderText="Game_ID" ReadOnly="True" SortExpression="Game_ID" />
                <asp:BoundField DataField="Game_Name" HeaderText="Game_Name" SortExpression="Game_Name" />
                <asp:BoundField DataField="Made_By" HeaderText="Made_By" SortExpression="Made_By" />
                <asp:BoundField DataField="IGN_Rating" HeaderText="IGN_Rating" SortExpression="IGN_Rating" />
                <asp:BoundField DataField="Playable_Cars" HeaderText="Playable_Cars" SortExpression="Playable_Cars" />
                <asp:BoundField DataField="Release_Year" HeaderText="Release_Year" SortExpression="Release_Year" />
                <asp:BoundField DataField="Difficulties" HeaderText="Difficulties" SortExpression="Difficulties" />
            </Fields>
        </asp:DetailsView>
</asp:Content>

