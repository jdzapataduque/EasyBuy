<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>jQuery Show Modal Popup from code behind or server side</title>
<link type="text/css" rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript">
    $(function () {
        $('#<%=btnclick.ClientID%>').click(function () {
        $("#popupdiv").dialog({
            title: "jQuery Popup from Server Side",
            width: 430,
            height: 250,
            modal: true,
            buttons: {
                Close: function () {
                    $(this).dialog('close');
                }
            }
        });
        return false;
    });
})

</script>
</head>
<body>
<form id="form1" runat="server">
<div>
<div id="popupdiv" title="Basic modal dialog" style="display: none">
<b> Welcome to Aspdotnet-Suresh.com</b>
</div>
<table align="center" style="margin-top:200px">
<tr>
<td>
<asp:Button ID="btnclick" runat="server" Text="Show Modal Popup" />
</td>
</tr>
</table>

</div>
</form>
</body>
</html>