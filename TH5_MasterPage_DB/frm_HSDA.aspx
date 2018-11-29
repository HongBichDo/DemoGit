<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_HSDA.aspx.cs" Inherits="TH5_MasterPage_DB.frm_HSDA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h1>Danh sách đồ án</h1>

            <table>
                <tr>
                    <th>STT</th>
                    <th>Mã sinh viên</th>
                    <th>Tên đồ án</th>
                    <th>GVHD</th>
                    <th>GVPB</th>
                    <th>Lĩnh vực</th>
   
                    <th>Điểm</th>
                    <th>Năm tốt nghiệp</th>
                   
                </tr>

                <asp:Literal ID="lit_DA" runat="server"></asp:Literal>

            </table>
        </div>
    </form>
</body>
</html>
