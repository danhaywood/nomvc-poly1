﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>
<%@ Import Namespace="NakedObjects.Resources" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title><%: MvcUi.BrowserErrorTitle %></title>
</head>
<body>
    <div class="error">
        <img alt="error" src="/Content/system-error.png" />
        <p><%: MvcUi.BrowserErrorText %></p>
    </div>
</body>
</html>
