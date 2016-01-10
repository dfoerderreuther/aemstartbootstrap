<%@ page import="com.day.cq.commons.Doctype,
    com.day.cq.wcm.api.components.DropTarget,
    com.day.cq.wcm.foundation.Image, com.day.cq.wcm.foundation.Placeholder" %><%
%><%@include file="/libs/foundation/global.jsp"%><%
    Image image = new Image(resource, "image");
    image.setSelector(".img");
	String src = image.getSrc() != null ? image.getSrc() : "/content/dam/aemstartbootstrap/header.jpg";
    %>

<header style="background-image:url(<%= src %>)">
    <div class="header-content">
        <div class="header-content-inner">
			<div class="header_par">
				<cq:include path="primary_par" resourceType="foundation/components/parsys"/>
            </div>
        </div> 
    </div>
</header>