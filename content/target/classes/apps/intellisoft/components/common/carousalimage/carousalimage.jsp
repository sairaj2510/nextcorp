<%--

  carousalimage component.

  this is carousal image

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
%>
<cq:includeClientLib categories="jquerysamples" />
<html>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Adobe Experience Manager Custom Carousel Demo</title>
 
<script type="text/javascript">
$(function(){
    $('#carousel').infiniteCarousel({
        displayTime: 6000,
        textholderHeight : .25
    });
});
</script>
<style type="text/css">
body {
    padding-top: 50px;
}
#carousel {
    margin: 0 auto;
    width: 400px;
    height: 390px;
    padding: 0;
    overflow: scroll;
    border: 2px solid #999;
}
#carousel ul {
    list-style: none;
    width: 1500px;
    margin: 0;
    padding: 0;
    position: relative;
}
#carousel li {
    display: inline;
    float: left;
}
.textholder {
    text-align: left;
    font-size: small;
    padding: 6px;
    -moz-border-radius: 6px 6px 0 0;
    -webkit-border-top-left-radius: 6px;
    -webkit-border-top-right-radius: 6px;
}
</style>
</head>
 
<body>
 
<div id="carousel">
    <ul>
        <li><img alt="" src="/content/dam/travel/1.jpg" width="500" height="213" /><p>Image 1.</p>
        </li>
        <li><img alt="" src="/content/dam/travel/2.jpg" width="500" height="213" /><p>Image 2</p>
        </li>
         <li><img alt="" src="/content/dam/travel/3.jpg" width="500" height="213" /><p>Image 3</p>
        </li>
        <li><img alt="" src="/content/dam/travel/4.jpg" width="500" height="213" /><p>Image 4</p>
        </li>
         <li><img alt="" src="/content/dam/travel/5.jpg" width="500" height="213" /><p>Image 5</p>
        </li>
    </ul>
</div>
</body>
</html>