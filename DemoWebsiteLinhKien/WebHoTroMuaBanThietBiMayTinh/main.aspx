<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="MaSanPham" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" Width="974px">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("HinhAnh", "~/hinhLinhKien/{0}") %>' Width="100px" />
            <br />
            Mã:
            <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Eval("MaSanPham") %>' />
            <br />
            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#CC0000" NavigateUrl='<%# Eval("MaSanPham", "~/chiTiet.aspx?MaSanPham={0}") %>' Text='<%# Eval("TenSP") %>'></asp:HyperLink>
            <br />
            Giá:
            <asp:Label ID="DonGiaLabel" runat="server" ForeColor="#CC0000" Text='<%# Eval("DonGia", "{0:N}") %>' />
            &nbsp;đồng<br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLLKConnectionString %>" SelectCommand="SELECT * FROM [tbl_SanPham] WHERE ([ML] = @ML)">
        <SelectParameters>
            <asp:Parameter DefaultValue="8" Name="ML" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

