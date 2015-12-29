<%@include file="/libs/foundation/global.jsp" %>

<div class="page__main area">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Start Bootstrap</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">

                    <%
                    Node par = currentNode.getNode("par");
                    NodeIterator nodes = par.getNodes();
                    while (nodes.hasNext()) {
                        Node node = nodes.nextNode();
                        Object nme = node.hasProperty("name") ? node.getProperty("name").getValue() : node.getName();
                        %><li><a href="#par_<%= node.getName() %>" class="page-scroll" ><%= nme %></a></li><%

                    }
                    %>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <div class="page__par area"><cq:include path="par" resourceType="foundation/components/parsys" /></div>

</div>