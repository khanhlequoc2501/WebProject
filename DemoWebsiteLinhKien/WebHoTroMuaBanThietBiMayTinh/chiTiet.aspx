<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chiTiet.aspx.cs" Inherits="chiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource1" style="margin-right: 31px" OnItemCommand="DataList_ItemCommand">
        <ItemTemplate>
            <table style="width: 99%; height: 137px;">
                <tr>
                    <td rowspan="5" style="border: thin solid #66CCFF">
                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("HinhAnh", "~/hinhLinhKien/{0}") %>' Width="100px" />
                    </td>
                    <td style="border: thin solid #66CCFF">Mã:
                        <asp:Label ID="MaSanPhamLabel0" runat="server" Text='<%# Eval("MaSanPham", "{0}") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="border: thin solid #66CCFF">Tên:
                        <asp:Label ID="TenSPLabel0" runat="server" Text='<%# Eval("TenSP") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="border: thin solid #66CCFF">Giá:
                        <asp:Label ID="DonGiaLabel0" runat="server" ForeColor="#CC0000" Text='<%# Eval("DonGia", "{0}") %>' />
                        &nbsp;đồng</td>
                </tr>
                <tr>
                    <td style="border: thin solid #66CCFF">Mô tả:
                        <asp:Label ID="MoTaLabel0" runat="server" Text='<%# Eval("MoTa") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="border: thin solid #66CCFF;">Tồn:
                        <asp:Label ID="SoLuongTonLabel0" runat="server" Text='<%# Eval("SoLuongTon") %>' />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="#66CCFF" CommandName="btMua" Text="Mua hàng" />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLLKConnectionString %>" SelectCommand="SELECT * FROM [tbl_SanPham] WHERE ([MaSanPham] = @MaSanPham)">
        <SelectParameters>
            <asp:QueryStringParameter Name="MaSanPham" QueryStringField="MaSanPham" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" ForeColor="#CC0000"></asp:Label>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Content>

