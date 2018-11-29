<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TH5_MasterPage_DB.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập hệ thống</title>
    <link href="style/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main">

            <h1>HỆ THỐNG QUẢN LÍ THÔNG TIN</h1>
            <img src="pic/login.jpg" />

            <div class="content">
                <p>Tên đăng nhập:</p>
                <asp:TextBox ID="txt_Name" runat="server" BackColor="#FFFFCC" Height="30px" Width="90%"></asp:TextBox>
                <p>Mật khẩu:</p>
                <asp:TextBox ID="txt_Pass" runat="server" BackColor="#FFFFCC" Height="31px" TextMode="Password" Width="90%"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btn_Login" runat="server" Text="Đăng nhập hệ thống" BackColor="#0099FF" ForeColor="White" Height="35px" Width="90%" Font-Size="20px" />
                <br />
                <br />
                <div>
                    <div style="text-align: left">
                        <asp:Button ID="btn_Huy" runat="server" Text="Hủy bỏ" BackColor="#FF3300" ForeColor="White" Height="34px" Width="76px" />
                    </div>
                    <div style="text-align: right">
                        <asp:CheckBox ID="ckb_Nho" runat="server" Text="Nhớ mật khẩu !" />
                        <a href="#">Quên mật khẩu?</a>
                    </div>
                </div>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
