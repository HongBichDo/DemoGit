<%@ Page Title="" Language="C#" MasterPageFile="~/Site1_Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TH5_MasterPage_DB.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- !PAGE CONTENT! -->
    <div class="w3-main" style="margin-left: 300px; margin-top: 43px;">

        <!-- Header -->
        <header class="w3-container" style="padding-top: 22px">
            <h5 style="color: black;"><b><i class="fa fa-dashboard"></i>TỔNG HỢP DỮ LIỆU HỆ THỐNG</b></h5>
        </header>

        <div class="w3-row-padding w3-margin-bottom">
            <div class="w3-quarter">
                <div class="w3-container w3-red w3-padding-16">
                    <div class="w3-left"><i class="fa fa-comment w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        
                           <asp:Label ID="lbl_SumSv" runat="server" ForeColor="White"></asp:Label>
                        
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ sinh viên</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-blue w3-padding-16">
                    <div class="w3-left"><i class="fa fa-eye w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <asp:Label ID="lbl_SumGV" runat="server" ForeColor="White"></asp:Label>
                       
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Hồ sơ giáo viên</h4>
                </div>
            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-teal w3-padding-16">
                    <div class="w3-left"><i class="fa fa-share-alt w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <asp:Label ID="lbl_SumDA" runat="server" ForeColor="White"></asp:Label>
                        
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Đồ án tốt nghiệp</h4>
                </div>


            </div>
            <div class="w3-quarter">
                <div class="w3-container w3-orange w3-text-white w3-padding-16">
                    <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
                    <div class="w3-right">
                        <asp:Label ID="lbl_sumCN" runat="server" ForeColor="White"></asp:Label>
                    </div>
                    <div class="w3-clear"></div>
                    <h4>Sổ chuyên ngành</h4>
                </div>
            </div>
        </div>

        <div class="w3-panel">
            <div class="w3-row-padding" style="margin: 0 -16px">
                <div class="w3-third">
                    <h5 style="color: black; font-weight: bold;">Thống kê sinh viên theo chuyên ngành</h5>
                </div>


            </div>
        </div>
        <hr>
        <div class="w3-container">
        
            <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
                <tr style="background-color: #4CAF50">
                    <th>STT</th>
                    <th>Chuyên ngành</th>
                    <th>S? sinh viên</th>
                    <th>Chi ti?t</th>
                </tr>
                <tr>
                    <th>1</th>
                    <th>Tin h?c M?</th>
                    <th>6</th>
                    <th><i class="fa fa-search fa-fw" style="text-decoration: underline">Danh sách</i></th>
                </tr>
                <tr>
                    <th>2</th>
                    <th>Tin h?c Tr?c-Ð?a</th>
                    <th>3</th>
                    <th><i class="fa fa-search fa-fw" style="text-decoration: underline">Danh sách</i></th>
                </tr>
                <tr>
                    <th>3</th>
                    <th>Tin Kinh t?</th>
                    <th>3</th>
                    <th><i class="fa fa-search fa-fw" style="text-decoration: underline">Danh sách</i></th>
                </tr>
                <tr>
                    <th>4</th>
                    <th>Tin Ð?a Ch?t</th>
                    <th>2</th>
                    <th><i class="fa fa-search fa-fw" style="text-decoration: underline">Danh sách</i></th>
                </tr>
                <tr>
                    <th>5</th>
                    <th>M?ng máy tính</th>
                    <th>1</th>
                    <th><i class="fa fa-search fa-fw" style="text-decoration: underline">Danh sách</i></th>
                </tr>
                <tr>
                    <th>6</th>
                    <th>Công ngh? ph?n m?m</th>
                    <th>4</th>
                    <th><i class="fa fa-search fa-fw" style="text-decoration: underline">Danh sách</i></th>
                </tr>
                <tr>
                    <th>7</th>
                    <th>Khoa h?c máy tính ?ng d?ng</th>
                    <th>1</th>
                    <th><i class="fa fa-search fa-fw" style="text-decoration: underline">Danh sách</i></th>
                </tr>
            </table>
            <br>

            <div class="w3-container">
                <h5><b>Thống kê đồ án theo điểm:</b></h5>
                <div class="w3-container  w3-padding " style="color: black; background-color: #CDDC39">
                    Diem do an < 7------
                   <asp:Label ID="Label1" runat="server" ></asp:Label>
                    do an
                </div>
                <div class="w3-container  w3-padding " style="color: black; background-color: #00BCD4">Diem do an tu 7.1 den 8.0 ---- 
                    <asp:Label ID="Label2" runat="server" ></asp:Label>
                    do án </div>
                <div class="w3-container  w3-padding " style="color: white; background-color: #009688">Diem do an tu 8.1 den 9.0 ---- 
                    <asp:Label ID="Label3" runat="server" ></asp:Label>
                    do án </div>
                <div class="w3-container  w3-padding " style="color: black; background-color: #FF9800">Diem do an tu 9.1 den 10  ---- 
                    <asp:Label ID="Label4" runat="server" ></asp:Label>
                    do án </div>
            </div>

           
        <hr>

        <div class="w3-container">
            <h5>Countries</h5>
            <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
                <tr>
                    <th>United States</th>
                    <th>65%</th>
                </tr>
                <tr>
                    <th>UK</th>
                    <th>15.7%</th>
                </tr>
                <tr>
                    <th>Russia</th>
                    <th>5.6%</th>
                </tr>
                <tr>
                    <th>Spain</th>
                    <th>2.1%</th>
                </tr>
                <tr>
                    <th>India</th>
                    <th>1.9%</th>
                </tr>
                <tr>
                    <th>France</th>
                    <th>1.5%</th>
                </tr>
            </table>
            <br>
        </div>
        <hr>

        <hr>

        <br>
    </div>
</asp:Content>
