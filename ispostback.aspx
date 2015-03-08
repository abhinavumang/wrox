<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ispostback.aspx.cs" Inherits="ispostback"  Trace="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo of IsPostBack</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="Login1" runat="server">
        </asp:Login>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    
    </div>
    <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>

    <input type="text" />

    </form>
</body>
</html>
