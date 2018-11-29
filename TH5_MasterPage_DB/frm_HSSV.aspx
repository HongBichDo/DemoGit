<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_HSSV.aspx.cs" Inherits="TH5_MasterPage_DB.frm_HSSV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DANH DÁCH SINH VIÊN</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Danh sách sinh viên</h1>
            <p>Nhập:</p>
            <p>
                <asp:TextBox ID="txt_Key" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Button ID="btn_Search" runat="server" OnClick="btn_Search_Click" Text="Tìm kiếm" />
            </p>
            <p>
                <asp:Label ID="lbl_Search" runat="server" ForeColor="#FF3300"></asp:Label>
            </p>

            <table>
                <tr>
                    <th>STT</th>
                    <th>Mã sinh viên</th>
                    <th>Tên SV</th>
                    <th>Ngày sinh</th>
                    <th>Giới tính</th>
                    <th>Khóa</th>
                    <th>Chuyên ngành</th>
                    <th>Email</th>
                    <th>Địên thoại</th>
                    <th>Địa chỉ</th>
                    <th>Chi tiết</th>
                </tr>

                <asp:Literal ID="lit_Kq" runat="server"></asp:Literal>


            </table>


        </div>
    </form>
</body>
</html>
