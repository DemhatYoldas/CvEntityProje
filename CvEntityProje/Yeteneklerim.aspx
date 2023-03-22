<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yeteneklerim.aspx.cs" Inherits="CvEntityProje.Hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px;">
        <tr>
            <td>ID</td>
            <td>YETENEK</td>
            <td>SİL</td>
            <td>GÜNCELLE</td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ID")%></td>
                    <td><%#Eval("YETENEK")%></td>
                    
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger"
                            NavigateUrl='<%#"YetenekSil.Aspx?ID="+ Eval("ID") %>'>Sil</asp:HyperLink>
                    </td>
                   
                    <td><a href="#" class="btn btn-success">Güncelle</a></td>
               
                    </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
    <a href="YeniYetenek.aspx" class="btn btn-primary" style="margin-left: 20;">Yeni Yetenek Ekle</a>

</asp:Content>
