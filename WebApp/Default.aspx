<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="ListBox1" runat="server" Height="226px" Width="832px"></asp:ListBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnShow" runat="server" Text="Göster" OnClick="btnShow_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Temizle" OnClick="btnClear_Click" />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Ekleme"></asp:Label>
&nbsp;<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="İsim:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdd" runat="server" Text="Ekle" OnClick="btnAdd_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Güncelleme"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Eski İsim:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtExName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:Button ID="btnDelete" runat="server" Text="Seçili Kaydı Sil" OnClick="btnDelete_Click" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Yeni İsim:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNewName" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnUpdate" runat="server" Text="Güncelle" OnClick="btnUpdate_Click" />
            <br />
        </div>
    </form>
</body>
</html>
