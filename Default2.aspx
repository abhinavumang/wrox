<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
private void submit (object source, EventArgs e) {
   SqlDataSource1.Insert();
   t1.Text = null;
   t2.Text = null;
  
}   
    
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var retval = prompt("Enter ur name", "Your name");
        alert("You hav entered=" + retval);
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   <div id="d1" style="float:left;width:150px">
   <asp:Label id="l1" runat="server" Width="45px" style="float:left">Name:</asp:Label>
   <asp:TextBox ID="t1" runat="server" Width="95px" style="float:right" ></asp:TextBox>
       
   </div>
   <div id="d2" style="float:left;width:150px">
   <asp:Label id="l2" runat="server" Width="75px" style="float:left">Password:</asp:Label>
   <asp:TextBox ID="t2" runat="server" Width="65px" TextMode="Password" style="float:right"></asp:TextBox>
    </div> 
   <div id="d3" style="float:left;width:150px">
   <asp:Button ID="b1" runat="server" Text="submit" style="float:left;display:inline;" OnClick="submit"/>
   </div>
    </div>
     <br />
    <div id="d4" style="float:none;width:70px">
    <asp:Button ID="b2" runat="server" Text="insert" style="float:left;display:inline" 
            onclick="b2_Click" />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
           ConnectionString="<%$ ConnectionStrings:officeConnection %>" 
           
           InsertCommand="INSERT INTO employee (name, password) VALUES (@na, @pa)" >
           
           <InsertParameters>
               
               <asp:FormParameter Name="na" FormField="t1" />
               <asp:FormParameter Name="pa" FormField="t2" />
           </InsertParameters>
           
       </asp:SqlDataSource>
    </form>
</body>
</html>
