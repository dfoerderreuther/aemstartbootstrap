<%@include file="/libs/foundation/global.jsp" %>
<%@page import="com.day.cq.wcm.api.WCMMode"%>
<% if (WCMMode.fromRequest(request).toString().equals("EDIT")) { %>
	<div style="display: block; width: 10px; height: 10px; background-color: #CCC"></div>
<% } %>
<div class="col-lg-3 col-md-6 text-center">
    <div class="service-box">
        <i class="fa fa-4x fa-<%= properties.get("icon", "diamond") %> wow bounceIn text-primary"></i>
        <%= properties.get("text", "") %>
    </div>
</div>