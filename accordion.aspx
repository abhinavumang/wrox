<%@ Page Language="C#" AutoEventWireup="true" CodeFile="accordion.aspx.cs" Inherits="accordion" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajax Control Toolkit</title>
    <link type="text/css" rel="Stylesheet" href="Styles/accordionStyle.css" />

</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="width:800px">
    
        <asp:Accordion ID="master_content" runat="server" 
            ContentCssClass="accordionContent" FadeTransitions="true" FramesPerSecond="100" HeaderCssClass="accordionHeader" HeaderSelectedCssClass="accordionHeaderSelected" AutoSize="None" 
            RequireOpenedPane="false" SelectedIndex="3" SuppressHeaderPostbacks="true" TransitionDuration="100">
        <Panes>
        <asp:AccordionPane runat="server" ID="pane1" ContentCssClass="" HeaderCssClass="">
        <Header><div><a class="accordionLink">1.Accordion</a></div></Header>
        <Content>
        <pre>
        The Accordion is a web control that allows you to provide multiple panes and 
        display them one at a time. It is like having several CollapsiblePanels where only
        one can be expanded at a time. The Accordion is implemented as a web control
        that contains AccordionPane web controls. Each AccordionPane control has a
        template for its Header and its Content. We keep track of the selected pane so it
        stays visible across postbacks.
        </pre>
        </Content>
        </asp:AccordionPane>
        <asp:AccordionPane runat="server" ID="pane2" ContentCssClass="" HeaderCssClass="">
        <Header><a class="accordionLink">2.AutoSize</a></Header>
        <Content>
        <pre>
        It also supports three AutoSize modes so it can fit in a variety of layouts.
        None - The Accordion grows/shrinks without restriction. 
        This can cause other elements on your page to move up and down with it.
        Limit - The Accordion never grows larger than the value specified by its Height property. 
        This will cause the content to scroll if it is too large to be displayed.
        Fill - The Accordion always stays the exact same size as its Height property. 
        This will cause the content to be expanded or shrunk if it isn't the right size.
        </pre>
        </Content>
        </asp:AccordionPane>
        <asp:AccordionPane runat="server" ID="pane3" ContentCssClass="" HeaderCssClass="">
        <Header><a class="accordionLink">3.Control or Extender</a></Header>
        <Content>
        <pre>
        The Accordion is written using an extender like most of the other extenders in the AJAX Control Toolkit.
        The extender expects its input in a very specific hierarchy of container elements (like divs), 
        so the Accordion and AccordionPane web controls are used to generate the expected input for the extender. 
        The extender can also be used on its own if you provide it appropriate input.
        </pre>
        </Content>
        </asp:AccordionPane>
        <asp:AccordionPane runat="server" ID="pane4" ContentCssClass="" HeaderCssClass="">
        <Header><a class="accordionLink">4.What is ASP.NET AJAX?</a></Header>
        <Content>
        <div style="float:right;margin-left:0">
        <img alt="" src="images/AJAX.gif" style="float:left"/>
        </div>
        <pre dir=ltr>
        ASP.NET AJAX is a free framework for building a new 
        generation of richer,more interactive, highly 
        personalized cross-browser web applications.
        This new web development technology from Microsoft 
        integrates cross-browser client script libraries with 
        the ASP.NET 2.0 server-based development framework. 
        In addition, ASP.NET AJAX offers you the same type of 
        development platform for client-based web pages that ASP.NET 
        offers for server-based pages. And because ASP.NET AJAX is an extension of ASP.NET, 
        it is fully integrated with server-based services. 
        ASP.NET AJAX makes it possible to easily take advantage of AJAX techniques on the web 
        and enables you to create ASP.NET pages with a rich, responsive UI and server communication. 
        However, AJAX isn't just for ASP.NET. You can take advantage of the rich client framework 
        to easily build client-centric web applications that integrate with any backend data provider 
        and run on most modern browsers. 
        </pre>
        
        </Content>
        </asp:AccordionPane>
        </Panes>
        </asp:Accordion>
    
    </div>
    </form>
    
    
    
   
</body>
</html>
