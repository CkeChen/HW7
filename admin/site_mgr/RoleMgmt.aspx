﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Games.master" AutoEventWireup="false" CodeFile="RoleMgmt.aspx.vb" Inherits="admin_site_mgr_RoleMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:HyperLink ID="link_userManager" runat="server" NavigateUrl="~/admin/site_mgr/UserMgmt.aspx">User Manager</asp:HyperLink>

            <br /><br /><hr />
            
                <h3>Manage Roles:</h3>

                Current Roles:<br />
                <asp:ListBox ID="list_currentRoles" runat="server"></asp:ListBox>
                <br />
                <br />
                <asp:Button ID="btn_deleteExistingRole" runat="server" Text="Delete An Existing Role" />

                <br />
                <span class="label_format">
                    <asp:Label ID="lbl_roleMgmt" runat="server"></asp:Label>
                </span>

                <br />
                <br />

                Add A New Role:<br />
                <span class="label_format">
                    <asp:TextBox ID="tb_newRole" runat="server"></asp:TextBox>
                </span>

                <br />
                <br />
                <asp:Button ID="btn_addNewRole" runat="server" Text="Add This New Role" />
            
            
            <br /><br /><hr />
            
            
                <h3>Add A User To A Role:</h3>

                <table>
                    <tr>
                        <td>Users:
                        </td>
                        <td>&nbsp;
                        </td>
                        <td>Roles:
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:ListBox ID="list_Users" runat="server"></asp:ListBox>
                        </td>
                        <td>&nbsp;
                        </td>
                        <td>
                            <asp:ListBox ID="list_Roles" runat="server"></asp:ListBox>
                        </td>
                    </tr>
                </table>
                <span class="label_format">
                    <asp:Label ID="lbl_addUserToRole" runat="server"></asp:Label>
                </span>
                <br /> 
                <asp:Button ID="btn_AddUserToRole" runat="server" Text="Add This User To This Role" />

            <br /><br /><hr />
            
                <h3>Remove A Role From A User</h3>

                <asp:ListBox ID="list_allUsers" runat="server" AutoPostBack="True"></asp:ListBox>

                <asp:ListBox ID="list_rolesThisUserHas" runat="server"></asp:ListBox>

                <br />
                <span class="label_format">
                    <asp:Label ID="lbl_removeRoleFromUser" runat="server"></asp:Label>
                </span>
                <br />
                <asp:Button ID="btn_removeRoleFromUser" runat="server" Text="Remove This Role From This User" />

                <br />                
                <br />            
                <hr />


                <h3>Remove A User From A Role</h3>

                <asp:ListBox ID="list_allRoles" runat="server" AutoPostBack="True"></asp:ListBox>

                <asp:ListBox ID="list_usersInThisRole" runat="server"></asp:ListBox>

                <br />
                <span class="label_format">
                    <asp:Label ID="lbl_removeUserFromRole" runat="server"></asp:Label>
                </span>
                <br />
                <asp:Button ID="btn_removeUserFromRole" runat="server" Text="Remove This User From This Role" />
            </div>
</asp:Content>

