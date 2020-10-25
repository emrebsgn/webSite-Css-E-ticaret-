<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="kayitol.aspx.cs" Inherits="_1196706033_emrebisgun.kayitol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="kayitol">
        <h1>Kayit Ol</h1>
        <p>&nbsp;</p>
        <table style="width: 100%; height: 389px">
            <tr>
                <td style="width: 135px">Tc*</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BorderWidth="1px" Height="25px" MaxLength="11" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Bu alan boş bırakılamaz." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 135px">Ad-Soyad*</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BorderWidth="1px" Height="25px" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Bu alan boş bırakılamaz." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 135px">Doğum Tarihi*</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" BorderWidth="1px" Height="25px" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Bu alan boş geçilemez." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="geçersiz tarih" ForeColor="Red" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 135px">Tel No*</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" BorderWidth="1px" Height="25px" Width="180px" MaxLength="11" TextMode="Phone" placeholder="555-555-55-55"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox6" ErrorMessage="Bu alan boş bırakılamaz." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 135px; height: 33px;">Şehir</td>
                <td style="height: 33px">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="0">Şehir Seç</asp:ListItem>
                        <asp:ListItem>İstanbul</asp:ListItem>
                        <asp:ListItem>Ankara</asp:ListItem>
                        <asp:ListItem>Antalya</asp:ListItem>
                        <asp:ListItem>Aydın</asp:ListItem>
                        <asp:ListItem>Balıkesir</asp:ListItem>
                        <asp:ListItem>Eskişehir</asp:ListItem>
                        <asp:ListItem>İzmir</asp:ListItem>
                        <asp:ListItem>Muğla</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Bu alan boş bırakılamaz." ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 135px; height: 44px;">Parola*</td>
                <td style="height: 44px">
                    <asp:TextBox ID="TextBox7" runat="server" BorderWidth="1px" Height="25px" Width="180px" TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Bu alan boş bırakılamaz." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="en az 6 karakterde şifre gir" ForeColor="Red" OnServerValidate="kontrol"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 135px">Parola Tekrar*</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" BorderWidth="1px" Height="25px" Width="180px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Bu alan boş bırakılamaz." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="parola eşleşmiyor" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 135px; height: 45px;">E-posta*</td>
                <td style="height: 45px">
                    <asp:TextBox ID="TextBox9" runat="server" BorderWidth="1px" Height="25px" Width="180px" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="Bu alan boş bırakılmaz." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox9" ErrorMessage="Geçersiz e-posta" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 135px">&nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Kayıt ol" OnClick="Button3_Click" />
                &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
