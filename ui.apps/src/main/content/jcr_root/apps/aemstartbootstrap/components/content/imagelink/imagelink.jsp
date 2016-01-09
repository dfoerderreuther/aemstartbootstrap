<%@ page import="com.day.cq.commons.Doctype,
    com.day.cq.wcm.api.components.DropTarget,
    com.day.cq.wcm.foundation.Image, com.day.cq.wcm.foundation.Placeholder" %><%
%><%@include file="/libs/foundation/global.jsp"%><%
    Image image = new Image(resource, "image");
    image.setSelector(".img");
    image.addCssClass("img-responsive");
    String imageHeight = image.get(image.getItemName(Image.PN_HEIGHT));
    %>

    <a href="<%= properties.get("link", "#") %>" class="portfolio-box">
        <% if (image.hasContent()) { %>
        	<% image.draw(out); %>
        <% } else { %>
        	<img src="/content/dam/aemstartbootstrap/portfolio/imagelink_example.jpg" class="img-responsive" alt="">
        <% } %>
        <div class="portfolio-box-caption">
            <div class="portfolio-box-caption-content">
                <div class="project-category text-faded">
                    <%= properties.get("category", "") %>
                </div>
                <div class="project-name">
                    <%= properties.get("name", "") %>
                </div>
            </div>
        </div>
    </a>
