<%@include file="/libs/foundation/global.jsp" %>
<%@page import="com.day.cq.wcm.api.WCMMode"%>
<div class="service-box">
    <i class="fa fa-4x fa-<%= properties.get("icon", "diamond") %> wow bounceIn text-primary"></i>
    <%= properties.get("text", "") %>
</div>
