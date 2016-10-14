<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div style="font-family: Verdana; font-size: smaller; background-color: #FFFFCC; border-style: solid; border-width: 1px; padding: 10px">
    <p style="font-size: x-large; color: #FF00FF;">Type something here:</p>
    <asp:TextBox ID="TextBox1" runat="server">
    </asp:TextBox>
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Button">
    </asp:Button>
    </div>

    </div>
    </form>
</body>
</html>
