<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_HSGV.aspx.cs" Inherits="TH5_MasterPage_DB.frm_HSGV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Danh sách giảng viên</h1>

            <table>
                <tr>
                    <th>STT</th>
                    <th>Mã giảng viên</th>
                    <th>Tên giảng viên</th>
                    <th>Ngày sinh</th>
                    <th>Giới tính</th>
                    <th>Học vị</th>
   
                    <th>Email</th>
                    <th>Địên thoại</th>
                    <th>Địa chỉ</th>
                </tr>

                <asp:Literal ID="lit_kq" runat="server"></asp:Literal>


            </table>
        </div>
    </form>
</body>
</html>
