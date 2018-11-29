<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_action.aspx.cs" Inherits="TH5_MasterPage_DB.frm_action" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            THÔNG TIN CHI TIẾT SINH VIÊN
            <br />
            Mã Sv: <asp:TextBox ID="txt_Masv" runat="server"></asp:TextBox>

            <br />
            Tên Sv: <asp:TextBox ID="txt_Ten" runat="server"></asp:TextBox>

            <br />
            Ngày sinh: <asp:TextBox ID="txt_NS" runat="server"></asp:TextBox>

            <br />
            Giới tính:
            <asp:RadioButton ID="rbt_Nam" runat="server" GroupName="GT" Text="Nam" />
            <asp:RadioButton ID="rbt_Nu" runat="server" GroupName="GT" Text="Nữ" />
            <br />
            Khóa: <asp:TextBox ID="txt_Khoa" runat="server"></asp:TextBox>

            <br />
            Chuyên ngành: <asp:TextBox ID="txt_CN" runat="server"></asp:TextBox>

            <br />
            Email: <asp:TextBox ID="txt_Email" runat="server"></asp:TextBox>

            <br />
            Điện thoại: <asp:TextBox ID="txt_SDT" runat="server"></asp:TextBox>

            <br />
            Điạ chỉ: <asp:TextBox ID="txt_Diachi" runat="server" Width="258px"></asp:TextBox>

        </div>
    </form>
</body>
</html>
