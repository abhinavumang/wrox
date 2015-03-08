<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    private void delete(object o, EventArgs e)
    {
        SqlDataSource1.Delete();
        t1.Text = null;
        l2.Visible = true;
        l2.Text = "congratulation";
    }
    </script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="d1" style="float:left;width:150px;margin-right:10px">
    <asp:Label ID="l1" runat="server" Width="45px" style="float:left">Name:</asp:Label>
    <asp:TextBox ID="t1" runat="server" Width="95px" style="float:right"></asp:TextBox>
    </div>
    <div id="d2" style="float:left;width:150px">
    <asp:Button ID="b1" runat="server" Text="delete" style="float:left;display:inline" OnClick="delete"/>
    </div>
    </div>
    <br />
    <div id="d3" style="float:none;width:150px">
    <asp:Label ID="l2" runat="server" Visible="false" Width=140px></asp:Label>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:officeConnection %>" 
        DeleteCommand="DELETE FROM employee WHERE name = @na" >
        <DeleteParameters>
            <asp:FormParameter Name="na" FormField="t1" />
        </DeleteParameters>
        
    </asp:SqlDataSource>
    </form>
</body>
</html>
