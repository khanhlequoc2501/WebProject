<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ĐĂNG NHẬP<br />
    <br />
    Tài khoản:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" EnableClientScript="False" ErrorMessage="Vui lòng nhập tài khoản" ForeColor="#CC0000"></asp:RequiredFieldValidator>
    <br />
&nbsp;<br />
    Mật khẩu:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" EnableClientScript="False" ErrorMessage="Vui lòng nhập mật khẩu" ForeColor="#CC0000"></asp:RequiredFieldValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp; Chưa có tài khoản?<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/DangKy.aspx" ForeColor="Red" Width="65px">Đăng ký</asp:HyperLink>
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Đăng nhập" BackColor="#66CCFF" ForeColor="Black" />
<br />

</asp:Content>

