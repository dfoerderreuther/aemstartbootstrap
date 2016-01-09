<%@include file="/libs/foundation/global.jsp" %>
<%@page import="com.day.cq.wcm.api.WCMMode"%>

    <a href="<%= properties.get("link", "#") %>" class="portfolio-box">
        <img src="/content/dam/aemstartbootstrap/portfolio/1.jpg" class="img-responsive" alt="">
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
