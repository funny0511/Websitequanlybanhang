<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="preview_dotnet_templates_akshara_clean_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="aspxtemplates.com">
    <title>akshara - bootstrap template</title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animated.css" rel="stylesheet" type="text/css" />
    <link href="css/vegas.min.css" rel="stylesheet" type="text/css" />
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700"
        rel="stylesheet" type="text/css" />
</head>
<body class="menu-hide-page">
    <form id="form1" runat="server">
    <div id="navigation" class="menu-hide">
         <div class="navbar navbar-fixed-top" role="banner">
            <div class="container">
               <div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><spanclass="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="index.htm"><img class="img-responsive" src="img/logo.jpg" alt="logo"></a></div>
               <nav id="main-menu" class="collapse navbar-collapse navbar-right">
                  <ul class="nav navbar-nav">
                     <li class="active"><a href="#navigation">Home</a></li>
                     <li><a href="#features">Features</a></li>
                     <li><a href="#description">App Info</a></li>
                     <li><a href="#screenshots">ScreenShots</a></li>
                     <li><a href="#video-section">Services</a></li>
                     <li><a href="#contact">contact</a></li>
                  </ul>
               </nav>
            </div>
         </div>
      </div>
      <header class="home padding-150" id="header">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="main-content text-left">
                     <h1 class="section-title">Website quản lý bán hàng cao cấp</h1>
                     <h4 class="section-sub-title"></h4>
                     &nbsp;</div>
               </div>
                     </div>
                  </div>
         <div id="copyright-header">
            <div class="container">
               <div id="social">
                  <ul class="list">
                     <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                     <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                     <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                     <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                     <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                  </ul>
               </div>
            </div>
         </div>
      </header>
      <div id="features">
         <div class="padding-100">
            <div class="container">
               <div class="col-md-12">
                  <div class="row">
                     <h3 class="h1 col-sm-4 blue"><span class="underline">Quản</span> Lý Sản Phẩm</h3>
                     <div>
                         <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="MaSP" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                             <Columns>
                                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                 <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                                 <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                                 <asp:BoundField DataField="MoTaSP" HeaderText="MoTaSP" SortExpression="MoTaSP" />
                                 <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" SortExpression="MaLSP" />
                             </Columns>
                             <EditRowStyle BackColor="#999999" />
                             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                             <SortedAscendingCellStyle BackColor="#E9E7E2" />
                             <SortedAscendingHeaderStyle BackColor="#506C8C" />
                             <SortedDescendingCellStyle BackColor="#FFFDF8" />
                             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [SanPham] ([MaSP], [TenSP], [MoTaSP], [MaLSP]) VALUES (@MaSP, @TenSP, @MoTaSP, @MaLSP)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [TenSP] = @TenSP, [MoTaSP] = @MoTaSP, [MaLSP] = @MaLSP WHERE [MaSP] = @MaSP">
                             <DeleteParameters>
                                 <asp:Parameter Name="MaSP" Type="String" />
                             </DeleteParameters>
                             <InsertParameters>
                                 <asp:Parameter Name="MaSP" Type="String" />
                                 <asp:Parameter Name="TenSP" Type="String" />
                                 <asp:Parameter Name="MoTaSP" Type="String" />
                                 <asp:Parameter Name="MaLSP" Type="String" />
                             </InsertParameters>
                             <UpdateParameters>
                                 <asp:Parameter Name="TenSP" Type="String" />
                                 <asp:Parameter Name="MoTaSP" Type="String" />
                                 <asp:Parameter Name="MaLSP" Type="String" />
                                 <asp:Parameter Name="MaSP" Type="String" />
                             </UpdateParameters>
                         </asp:SqlDataSource>
                     </div>
                     <div style="height: 50px">

                     </div>
                     <div>
                         <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" ForeColor="#333333">
                             <EditItemTemplate>
                                 MaSP:
                                 <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
                                 <br />
                                 TenSP:
                                 <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                                 <br />
                                 MoTaSP:
                                 <asp:TextBox ID="MoTaSPTextBox" runat="server" Text='<%# Bind("MoTaSP") %>' />
                                 <br />
                                 MaLSP:
                                 <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                                 <br />
                                 <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                 &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                             </EditItemTemplate>
                             <EditRowStyle BackColor="#999999" />
                             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                             <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                             <InsertItemTemplate>
                                 MaSP:
                                 <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                                 <br />
                                 TenSP:
                                 <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                                 <br />
                                 MoTaSP:
                                 <asp:TextBox ID="MoTaSPTextBox" runat="server" Text='<%# Bind("MoTaSP") %>' />
                                 <br />
                                 MaLSP:
                                 <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                                 <br />
                                 <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                 &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                             </InsertItemTemplate>
                             <ItemTemplate>
                                 MaSP:
                                 <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                                 <br />
                                 TenSP:
                                 <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
                                 <br />
                                 MoTaSP:
                                 <asp:Label ID="MoTaSPLabel" runat="server" Text='<%# Bind("MoTaSP") %>' />
                                 <br />
                                 MaLSP:
                                 <asp:Label ID="MaLSPLabel" runat="server" Text='<%# Bind("MaLSP") %>' />
                                 <br />
                                 <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                 &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                 &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                             </ItemTemplate>
                             <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                         </asp:FormView>
                     </div>
                    <div style="height: 50px">

                     </div>
                      <div>
                          <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaLSP" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="100%">
                              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                              <Columns>
                                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                  <asp:BoundField DataField="MaLSP" HeaderText="MaLSP" ReadOnly="True" SortExpression="MaLSP" />
                                  <asp:BoundField DataField="TenLSP" HeaderText="TenLSP" SortExpression="TenLSP" />
                              </Columns>
                              <EditRowStyle BackColor="#999999" />
                              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                              <SortedAscendingCellStyle BackColor="#E9E7E2" />
                              <SortedAscendingHeaderStyle BackColor="#506C8C" />
                              <SortedDescendingCellStyle BackColor="#FFFDF8" />
                              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                          </asp:GridView>
                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [MaLSP] = @MaLSP" InsertCommand="INSERT INTO [LoaiSanPham] ([MaLSP], [TenLSP]) VALUES (@MaLSP, @TenLSP)" SelectCommand="SELECT * FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [TenLSP] = @TenLSP WHERE [MaLSP] = @MaLSP">
                              <DeleteParameters>
                                  <asp:Parameter Name="MaLSP" Type="String" />
                              </DeleteParameters>
                              <InsertParameters>
                                  <asp:Parameter Name="MaLSP" Type="String" />
                                  <asp:Parameter Name="TenLSP" Type="String" />
                              </InsertParameters>
                              <UpdateParameters>
                                  <asp:Parameter Name="TenLSP" Type="String" />
                                  <asp:Parameter Name="MaLSP" Type="String" />
                              </UpdateParameters>
                          </asp:SqlDataSource>
                      </div>
                      <div style="height: 50px">

                     </div>
                      <div>
                          <asp:FormView ID="FormView2" runat="server" CellPadding="4" DataKeyNames="MaLSP" DataSourceID="SqlDataSource2" ForeColor="#333333">
                              <EditItemTemplate>
                                  MaLSP:
                                  <asp:Label ID="MaLSPLabel1" runat="server" Text='<%# Eval("MaLSP") %>' />
                                  <br />
                                  TenLSP:
                                  <asp:TextBox ID="TenLSPTextBox" runat="server" Text='<%# Bind("TenLSP") %>' />
                                  <br />
                                  <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                  &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                              </EditItemTemplate>
                              <EditRowStyle BackColor="#999999" />
                              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                              <InsertItemTemplate>
                                  MaLSP:
                                  <asp:TextBox ID="MaLSPTextBox" runat="server" Text='<%# Bind("MaLSP") %>' />
                                  <br />
                                  TenLSP:
                                  <asp:TextBox ID="TenLSPTextBox" runat="server" Text='<%# Bind("TenLSP") %>' />
                                  <br />
                                  <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                  &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                              </InsertItemTemplate>
                              <ItemTemplate>
                                  MaLSP:
                                  <asp:Label ID="MaLSPLabel" runat="server" Text='<%# Eval("MaLSP") %>' />
                                  <br />
                                  TenLSP:
                                  <asp:Label ID="TenLSPLabel" runat="server" Text='<%# Bind("TenLSP") %>' />
                                  <br />
                                  <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                  &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                  &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                              </ItemTemplate>
                              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                          </asp:FormView>
                      </div>
                  </div>
               </div>
            </div>
            </div>
         </div>
      </div>
      <div id="description">
         <div class="container">
            <div class="description-section padding-100">
               <div class="row">
                  <div class="col-md-12">
                     <div class="row">
                        <h3 class="h1 col-sm-4 blue"><span class="underline">Danh Sách Khách Hàng</span></h3>  
                     </div>
                  </div>
                   <div>
                       <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaKH" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="100%">
                           <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                           <Columns>
                               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                               <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                               <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
                               <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                               <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                           </Columns>
                           <EditRowStyle BackColor="#999999" />
                           <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                           <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                           <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                           <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                           <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                           <SortedAscendingCellStyle BackColor="#E9E7E2" />
                           <SortedAscendingHeaderStyle BackColor="#506C8C" />
                           <SortedDescendingCellStyle BackColor="#FFFDF8" />
                           <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                       </asp:GridView>
                       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [Khach_Hang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [Khach_Hang] ([MaKH], [HoTen], [SDT], [DiaChi]) VALUES (@MaKH, @HoTen, @SDT, @DiaChi)" SelectCommand="SELECT * FROM [Khach_Hang]" UpdateCommand="UPDATE [Khach_Hang] SET [HoTen] = @HoTen, [SDT] = @SDT, [DiaChi] = @DiaChi WHERE [MaKH] = @MaKH">
                           <DeleteParameters>
                               <asp:Parameter Name="MaKH" Type="String" />
                           </DeleteParameters>
                           <InsertParameters>
                               <asp:Parameter Name="MaKH" Type="String" />
                               <asp:Parameter Name="HoTen" Type="String" />
                               <asp:Parameter Name="SDT" Type="String" />
                               <asp:Parameter Name="DiaChi" Type="String" />
                           </InsertParameters>
                           <UpdateParameters>
                               <asp:Parameter Name="HoTen" Type="String" />
                               <asp:Parameter Name="SDT" Type="String" />
                               <asp:Parameter Name="DiaChi" Type="String" />
                               <asp:Parameter Name="MaKH" Type="String" />
                           </UpdateParameters>
                       </asp:SqlDataSource>
                   </div>
                   <div style="height: 50px">

                     </div>
                   <div>
                       <asp:FormView ID="FormView3" runat="server" CellPadding="4" DataKeyNames="MaKH" DataSourceID="SqlDataSource3" ForeColor="#333333">
                           <EditItemTemplate>
                               MaKH:
                               <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
                               <br />
                               HoTen:
                               <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
                               <br />
                               SDT:
                               <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                               <br />
                               DiaChi:
                               <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                               <br />
                               <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                               &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                           </EditItemTemplate>
                           <EditRowStyle BackColor="#999999" />
                           <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                           <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                           <InsertItemTemplate>
                               MaKH:
                               <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                               <br />
                               HoTen:
                               <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
                               <br />
                               SDT:
                               <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
                               <br />
                               DiaChi:
                               <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                               <br />
                               <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                               &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                           </InsertItemTemplate>
                           <ItemTemplate>
                               MaKH:
                               <asp:Label ID="MaKHLabel" runat="server" Text='<%# Eval("MaKH") %>' />
                               <br />
                               HoTen:
                               <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' />
                               <br />
                               SDT:
                               <asp:Label ID="SDTLabel" runat="server" Text='<%# Bind("SDT") %>' />
                               <br />
                               DiaChi:
                               <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
                               <br />
                               <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                               &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                               &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                           </ItemTemplate>
                           <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                           <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                       </asp:FormView>
                   </div>
                  <div class="col-sm-6">
                     <div class="descriptions">
                       
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <section id="products">
         <div class="container-fluid">
            <div class="row">
               <a href="inner-page.html" class="col-sm-3 col-xs-6 white-bg arrow-right">
                  <div class="squared">
                     <div class="squared-content text-center">
                        <h4>Accessories</h4>
                        <h5 class="smoke">Collection '15</h5>
                     </div>
                  </div>
               </a>
               <div class="col-sm-3 col-xs-6" id="content-half-img-1">
                  <div class="squared">
                     <div class="squared-content"></div>
                  </div>
               </div>
               <a href="inner-page.html" class="col-sm-3 col-xs-6 col-xs-pushit-6 white-bg arrow-right">
                  <div class="squared">
                     <div class="squared-content text-center">
                        <h4>Prints</h4>
                        <h5 class="smoke">6 new items</h5>
                     </div>
                  </div>
               </a>
               <div class="col-sm-3 col-xs-6 col-xs-pullit-6" id="content-half-img-2">
                  <div class="squared">
                     <div class="squared-content"></div>
                  </div>
               </div>
               <div class="col-sm-3 col-xs-6 col-xs-pushit-6" id="content-half-img-3">
                  <div class="squared">
                     <div class="squared-content"></div>
                  </div>
               </div>
               <a href="inner-page.html" class="col-sm-3 col-xs-6 col-xs-pullit-6 white-bg arrow-left">
                  <div class="squared">
                     <div class="squared-content text-center">
                        <h4>Packaging</h4>
                        <h5 class="smoke">Free!</h5>
                     </div>
                  </div>
               </a>
               <div class="col-sm-3 col-xs-6" id="content-half-img-4">
                  <div class="squared">
                     <div class="squared-content"></div>
                  </div>
               </div>
               <a href="inner-page.html" class="col-sm-3 col-xs-6 white-bg arrow-left">
                  <div class="squared">
                     <div class="squared-content text-center">
                        <h4>Clothing</h4>
                        <h5 class="smoke">Spring '15</h5>
                     </div>
                  </div>
               </a>
            </div>
         </div>
      </section>
      <div id="screenshots">
         <div class="overlay-bg"></div>
         <div class="container">
            <div class="padding-100">
               <div class="row">
                  <h3 class="h1 col-sm-4 blue"><span class="underline">Chi Tiết Hóa Đơn</span></h3>
               </div>
            </div>
            <div>
                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaHD" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                        <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                        <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                        <asp:BoundField DataField="DonGia" HeaderText="DonGia" SortExpression="DonGia" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoadon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [ChiTietHoadon] ([MaHD], [MaSP], [SoLuong], [DonGia]) VALUES (@MaHD, @MaSP, @SoLuong, @DonGia)" SelectCommand="SELECT * FROM [ChiTietHoadon]" UpdateCommand="UPDATE [ChiTietHoadon] SET [MaSP] = @MaSP, [SoLuong] = @SoLuong, [DonGia] = @DonGia WHERE [MaHD] = @MaHD">
                    <DeleteParameters>
                        <asp:Parameter Name="MaHD" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MaHD" Type="String" />
                        <asp:Parameter Name="MaSP" Type="String" />
                        <asp:Parameter Name="SoLuong" Type="String" />
                        <asp:Parameter Name="DonGia" Type="Decimal" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MaSP" Type="String" />
                        <asp:Parameter Name="SoLuong" Type="String" />
                        <asp:Parameter Name="DonGia" Type="Decimal" />
                        <asp:Parameter Name="MaHD" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
            <div style="height: 50px">

            </div>
            <div>
                <asp:FormView ID="FormView4" runat="server" CellPadding="4" DataKeyNames="MaHD" DataSourceID="SqlDataSource4" ForeColor="#333333">
                    <EditItemTemplate>
                        MaHD:
                        <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
                        <br />
                        MaSP:
                        <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                        <br />
                        SoLuong:
                        <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                        <br />
                        DonGia:
                        <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        MaHD:
                        <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                        <br />
                        MaSP:
                        <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                        <br />
                        SoLuong:
                        <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                        <br />
                        DonGia:
                        <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        MaHD:
                        <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
                        <br />
                        MaSP:
                        <asp:Label ID="MaSPLabel" runat="server" Text='<%# Bind("MaSP") %>' />
                        <br />
                        SoLuong:
                        <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
                        <br />
                        DonGia:
                        <asp:Label ID="DonGiaLabel" runat="server" Text='<%# Bind("DonGia") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:FormView>
            </div>
         </div>
      </div>
      <section id="pricing" class="section pricing white-bg padding-100">
         <div class="container">
            <div class="row">
               <h3 class="h1 col-sm-4 blue"><span class="underline">Hóa Đơn</span></h3>
            </div>
           <div>
                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource5" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                        <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                        <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
                        <asp:BoundField DataField="NgayLap" HeaderText="NgayLap" SortExpression="NgayLap" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHD] = @MaHD" InsertCommand="INSERT INTO [HoaDon] ([MaHD], [TenSP], [MaKH], [NgayLap]) VALUES (@MaHD, @TenSP, @MaKH, @NgayLap)" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [TenSP] = @TenSP, [MaKH] = @MaKH, [NgayLap] = @NgayLap WHERE [MaHD] = @MaHD">
                    <DeleteParameters>
                        <asp:Parameter Name="MaHD" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MaHD" Type="String" />
                        <asp:Parameter Name="TenSP" Type="String" />
                        <asp:Parameter Name="MaKH" Type="String" />
                        <asp:Parameter DbType="Date" Name="NgayLap" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TenSP" Type="String" />
                        <asp:Parameter Name="MaKH" Type="String" />
                        <asp:Parameter DbType="Date" Name="NgayLap" />
                        <asp:Parameter Name="MaHD" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <div style="height: 50px">

            </div>
               <div>
                    <asp:FormView ID="FormView5" runat="server" CellPadding="4" DataKeyNames="MaHD" DataSourceID="SqlDataSource5" ForeColor="#333333">
                        <EditItemTemplate>
                            MaHD:
                            <asp:Label ID="MaHDLabel1" runat="server" Text='<%# Eval("MaHD") %>' />
                            <br />
                            TenSP:
                            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                            <br />
                            MaKH:
                            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                            <br />
                            NgayLap:
                            <asp:TextBox ID="NgayLapTextBox" runat="server" Text='<%# Bind("NgayLap") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            MaHD:
                            <asp:TextBox ID="MaHDTextBox" runat="server" Text='<%# Bind("MaHD") %>' />
                            <br />
                            TenSP:
                            <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                            <br />
                            MaKH:
                            <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                            <br />
                            NgayLap:
                            <asp:TextBox ID="NgayLapTextBox" runat="server" Text='<%# Bind("NgayLap") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            MaHD:
                            <asp:Label ID="MaHDLabel" runat="server" Text='<%# Eval("MaHD") %>' />
                            <br />
                            TenSP:
                            <asp:Label ID="TenSPLabel" runat="server" Text='<%# Bind("TenSP") %>' />
                            <br />
                            MaKH:
                            <asp:Label ID="MaKHLabel" runat="server" Text='<%# Bind("MaKH") %>' />
                            <br />
                            NgayLap:
                            <asp:Label ID="NgayLapLabel" runat="server" Text='<%# Bind("NgayLap") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    </asp:FormView>
               </div>
           </div>
         </div>
      </section>
      <section id="contact" class="white-bg">
         <div class="container padding-100">
            <div class="row">
               <div class="section-header wow zoomIn animated" data-wow-offset="10" data-wow-delay="0.5s">
                  <h3 class="h1 blue"><span class="underline">Góp ý</span></h3>
               </div>
            </div>
            <div class="row padding-top-40">
               <div class="col-md-8">
                  <div id="main-contact-form" class="contact-form">
                     <form role="form" action="contact.php" method="post">
                        <div class="form-group"><label class="sr-only" for="contact-name"> Name</label><input type="text" name="name" placeholder="Name..." class="contact-name form-control" id="contact-name"></div>
                        <div class="form-group"><label class="sr-only" for="contact-email"> Email</label><input type="text" name="email" placeholder="Email..." class="contact-email form-control" id="contact-email"></div>
                        <div class="form-group"><label class="sr-only" for="contact-subject"> Subject</label><input type="text" name="subject" placeholder="Subject..." class="contact-subject form-control" id="contact-subject"></div>
                        <div class="form-group"><label class="sr-only" for="contact-message"> Message</label><textarea name="message" placeholder="Message..." class="contact-message form-control" id="contact-message"></textarea></div>
                        <button type="submit" class="btn btn-common"> Send message</button>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <footer>
         <div class="container">
            <div class="row footer-widgets">
               <div class="col-md-3 col-xs-12">
                  <div class="footer-widget mail-subscribe-widget social-widget wow zoomIn animated" data-wow-offset="10" data-wow-delay="0.5s">
                     <h4> Follow Us<span class="head-line"></span></h4>
                     <ul class="social-icons">
                        <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a class="google" href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
                        <li><a class="linkdin" href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a class="flickr" href="#"><i class="fa fa-flickr"></i></a></li>
                        <li><a class="tumblr" href="#"><i class="fa fa-tumblr"></i></a></li>
                        <li><a class="instgram" href="#"><i class="fa fa-instagram"></i></a></li>
                        <li><a class="vimeo" href="#"><i class="fa fa-vimeo-square"></i></a></li>
                        <li><a class="skype" href="#"><i class="fa fa-skype"></i></a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-md-3 col-xs-12">
                  <div class="footer-widget twitter-widget wow zoomIn animated" data-wow-offset="10" data-wow-delay="0.5s">
                  </div>
               </div>
               <div class="col-md-3 col-xs-12">
                  <div class="footer-widget flickr-widget wow zoomIn animated" data-wow-offset="10" data-wow-delay="0.5s">
                     <h4> Themes Feed<span class="head-line"></span></h4>
                     <ul>
                        <li><a href="#">Admin & Dashboard </a></li>
                        <li><a href="#">Full Websites </a></li>
                        <li><a href="#">Landing Pages </a></li>
                        <li><a href="#">One Page Websites </a></li>
                        <li><a href="#">Portfolio </a></li>
                        <li><a href="#">Blogs </a></li>
                     </ul>
                  </div>
               </div>
               <div class="col-md-3 col-xs-12">
                  <div class="footer-widget contact-widget wow zoomIn animated" data-wow-offset="10" data-wow-delay="0.5s">    
                  </div>
               </div>
            </div>
            <div class="copyright-section wow zoomIn animated" data-wow-offset="10" data-wow-delay="0.5s">
               <div class="row">
                  <div class="col-md-6 col-sm-12 col-xs-12">
                  </div>
                  <div class="col-md-6 col-sm-12 col-xs-12">
                     <ul class="footer-nav">
                        <li><a href="#">Sitemap</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Contact</a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <div class="scroll-top" data-spy="affix" data-offset-top="300"><a href="#header"><i class="fa fa-angle-up"></i></a></div>
      <script src="js/jquery.js" type="text/javascript"></script><script src="assets/js/bootstrap.min.js" type="text/javascript"></script><script src="js/jquery.backstretch.js" type="text/javascript"></script><script src="js/nav.js" type="text/javascript"></script><script src="js/vegas.min.js" type="text/javascript"></script><script src="js/owl.carousel.min.js" type="text/javascript"></script><script src="js/waypoints.min.js" type="text/javascript"></script><script src="js/counter.min.js" type="text/javascript"></script><script src="js/scroll-top.js" type="text/javascript"></script><script src="js/wow.min.js" type="text/javascript"></script><script src="js/main.js" type="text/javascript"></script>
    </form>
</body>
</html>
