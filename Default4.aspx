<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    private void update(object o, EventArgs e)
    {
        SqlDataSource1.Update();
        t1.Text = null;
        l3.Visible = true;
        l3.Text = "congratulation";
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
    <div id="Div1" style="float:left;width:150px;margin-right:10px">
    <asp:Label ID="l2" runat="server" Width="45px" style="float:left">Password:</asp:Label>
    <asp:TextBox ID="t2" runat="server" Width="65px" style="float:right" TextMode="Password"></asp:TextBox>
    </div>
    <div id="d2" style="float:left;width:150px">
    <asp:Button ID="b1" runat="server" Text="update" style="float:left;display:inline" OnClick="update"/>
    </div>
    </div>
    <br />
    <div id="d3" style="float:none;width:150px">
    <asp:Label ID="l3" runat="server" Visible="false" Width=140px></asp:Label>
    </div>
    <br />
    <div id="d4" style="float:none;width:70px">
    <asp:Button ID="b2" runat="server" Text="insert" style="float:left;display:inline" />
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:officeConnection %>" 
        UpdateCommand="update  employee set password=@pa where name=@na ">
       
        <UpdateParameters>
        <asp:FormParameter Name="na" FormField="t1" />
        <asp:FormParameter Name="pa" FormField="t2" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    </form>
</body>
</html>
