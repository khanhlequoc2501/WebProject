<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gioHang.aspx.cs" Inherits="gioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="STT">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Masp" HeaderText="Mã" />
                <asp:BoundField DataField="Tensanpham" HeaderText="Tên" />
                <asp:BoundField DataField="Gia" HeaderText="Giá" />
                <asp:TemplateField HeaderText="Số lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="txtsoluong" runat="server" Height="20px" Text='<%# Eval("Soluong") %>' Width="73px">
                        </asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Thanhtien" HeaderText="Thành tiền" />
                <asp:ButtonField CommandName="xoa" Text="Xóa" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#CC0000"></asp:Label>
        <br />
        <asp:Button ID="btnxoagiohang" runat="server" onclick="btnxoagiohang_Click" Text="Xóa giỏ hàng" BackColor="#66CCFF" ForeColor="White" />
        <br />
</asp:Content>

