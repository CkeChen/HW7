<%@ Page Title="" Language="VB" MasterPageFile="~/Games.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Your Email Adress:"></asp:Label>
<br />
<asp:TextBox ID="senderAddress" runat="server" Height="64px" Width="175px"></asp:TextBox>
<br />
<br />
Your Message:<br />
<asp:TextBox ID="senderMessage" runat="server" Height="81px" TextMode="MultiLine" Width="170px"></asp:TextBox>
<br />
<br />
<asp:Button ID="sendMail" runat="server" Text="Send" />
<br />
<asp:Label ID="confirmSent" runat="server"></asp:Label>
<br />
</asp:Content>

