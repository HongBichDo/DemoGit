<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_admin_chuyennganh.aspx.cs" Inherits="TH5_MasterPage_DB.frm_admin_chuyennganh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>quản trị chuyên ngành</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Thêm chuyên ngành :<br />
&nbsp;Mã chuyên ngành <asp:TextBox ID="txt_MaCN" runat="server"></asp:TextBox>
            <br />
&nbsp;Tên chuyên ngành <asp:TextBox ID="txt_tenCN" runat="server"></asp:TextBox>
            <br />
&nbsp;Ghi chú:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_Ghichu" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_Them" runat="server" Text="Thêm mới" />
            <asp:Button ID="btn_Huy" runat="server" Text="Hủy" />
            <br />
            <asp:Label ID="lbl_Tb" runat="server" ForeColor="#FF3300"></asp:Label>
        </div>
    </form>
    <p>
        DANH SÁCH SINH VIÊN CHUYÊN NGÀNH TRONG CSDL</p>
    <p>
        &nbsp;</p>

    <table>
        <tr>
            <th>Mã CN</th>
            <th>Tên CN</th>
            <th>Ghi chú</th>

        </tr>
        <asp:Literal ID="lit_cn" runat="server" ></asp:Literal>
    </table>
</body>
</html>
