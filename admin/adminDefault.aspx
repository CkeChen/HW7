<%@ Page Title="" Language="VB" MasterPageFile="~/Games.master" AutoEventWireup="false" CodeFile="adminDefault.aspx.vb" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   Racing Game-Site Adminstration

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Racing Game-Site Adminstration</h1>



    <ul>
        <li>
            <asp:HyperLink ID="Link_editgame" runat="server" NavigateUrl="~/admin/ViewAllGames.aspx">Edit a Game</asp:HyperLink>
        </li>
        <li><asp:HyperLink ID="Link_newGame" runat="server" NavigateUrl="~/admin/GameDetail.aspx">Add a New Game</asp:HyperLink></li>
        <li><asp:HyperLink ID="Link_users" runat="server" NavigateUrl="~/admin/site_mgr/UserMgmt.aspx">Manage Users</asp:HyperLink></li>
        <li><asp:HyperLink ID="Link_roles" runat="server" NavigateUrl="~/admin/site_mgr/RoleMgmt.aspx">Manage Roles</asp:HyperLink></li>

    </ul>
</asp:Content>

