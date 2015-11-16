<%@page session="false"%><%--
  Copyright 1997-2011 Day Management AG
  Barfuesserplatz 6, 4001 Basel, Switzerland
  All Rights Reserved.

  This software is the confidential and proprietary information of
  Day Management AG, ("Confidential Information"). You shall not
  disclose such Confidential Information and shall use it only in
  accordance with the terms of the license agreement you entered into
  with Day.

  ==============================================================================

  Header script.

  Draws the top header and shows an example of how to include a cacheable
  navigation by using a script include. see page/topnav.jsp for more details.
  Note that the topnav script is included as .html so that it is flushed on the
  dispatcher on invalidation requests.

  ==============================================================================

--%><%@ page import="com.day.cq.commons.Doctype, com.day.cq.i18n.I18n, com.day.text.Text" %><%
%><%@include file="/libs/foundation/global.jsp" %>
<!-- Header -->
<!-- Site Selector -->
<div class="site-selector-row">
  <div class="site-selector">
    <div class="custom-select">
     <label for="site-selection" class="sr-only">Select Site</label>
      <select name="site-selection" id="site-selection">
        <option value="">Site 1</option>
        <option value="">Site 2</option>
        <option value="">Site 3</option>
      </select>
    </div>
  </div>
</div>
<!-- /Site Selector -->

<div class="utility-row">
  <div class="content">
    <!-- Customer service phone -->
<div class="customer-service-phone">
  <span>Customer Service:</span> <a href="tel:1-800-647-6389"><span>1 (800) 647-6389</span></a>
</div>
<!-- /Customer service phone -->

    <div class="user-config">
      <!-- Cart -->
<div class="cart-block">
  <a href="">
    <span class="sr-only">Cart</span>
    <i class="fa fa-shopping-cart"></i>
  </a>
</div>
<!-- /Cart -->
      <!-- User identifier -->
<div class="user-identifier">
  <a href="">My Veritas</a>
</div>
<!-- /User identifier -->
      <!-- Country/Language selector -->
 <div class="vs-custom-select country-language-selector">
  <a class="country-identifier" href="">USA</a>
</div>
<!-- /Country/Language selector -->
    </div>
  </div>
</div>

<header role="banner">
  <div class="content">
    <div class="navigation-search-row">
      <!-- Logo -->
<div class="logo">
  <a href=""><img src="../../../assets/img/logo-veritas@2x.png" alt="Veritas"></a>
</div>
<!-- /Logo -->
      <!-- Main navigation -->
<div class="menu-wrapper">
  <a href="#menu" class="menu-link">Menu <i class="fa fa-bars"></i></a>
  <nav role="navigation" id="menu" class="main-navigation">
    <ul class="menu">
      <li class="has-submenu">
        <a href="">Solutions <i class="fa fa-chevron-right"></i></a>
        <div class="sub-menu">
          <ul>
            <li><a href="">Availability</a></li>
            <li><a href="">Insights</a></li>
            <li><a href="">IT Trends</a></li>
            <li><a href="">Industries</a></li>
          </ul>
        </div>
      </li>
      <li class="has-submenu"> <!-- use .has-submenu class if submenu content -->
        <a href="">Products <i class="fa fa-chevron-right"></i></a>
        <div class="sub-menu">
          <ul>
            <li><a href="">Products A-Z</a></li>
            <li><a href="">Backup and Recovery</a></li>
            <li><a href="">Storage Management and Availability</a></li>
            <li><a href="">Information Governance</a></li>
            <li><a href="">For Small Business</a></li>
            <li><a href="">For Enterprise</a></li>
          </ul>
        </div>
      </li>
      <li class="has-submenu">
        <a href="">Services <i class="fa fa-chevron-right"></i></a>
        <div class="sub-menu">
          <ul>
            <li><a href="">Consulting</a></li>
            <li><a href="">Educational</a></li>
            <li><a href="">Training</a></li>
            <li><a href="">Managed Services</a></li>
            <li><a href="">Appliances</a></li>
          </ul>
        </div>
      </li>
      <li class="has-submenu">
        <a href="">Support Center <i class="fa fa-chevron-right"></i></a>
        <div class="sub-menu">
          <ul>
            <li><a href="">Technical Support</a></li>
            <li><a href="">Training</a></li>
            <li><a href="">FAQs</a></li>
            <li><a href="">Policies</a></li>
            <li><a href="">Community</a></li>
            <li><a href="">Licensing</a></li>
          </ul>
        </div>
      </li>
      <li class="has-submenu"> <!-- example of one that doesn't have subnav -->
        <a href="">About <i class="fa fa-chevron-right"></i></a>
        <div class="sub-menu">
          <ul>
            <li><a href="">Technical Support</a></li>
            <li><a href="">Training</a></li>
            <li><a href="">FAQs</a></li>
            <li><a href="">Policies</a></li>
            <li><a href="">Community</a></li>
            <li><a href="">Licensing</a></li>
          </ul>
        </div>
      </li>
    </ul>
    <!-- Search -->
<a class="show-search drop-trigger" href="">
  <i class="fa fa-search"></i>
</a>
<div class="site-search">
  <div class="search-box content drop-menu">
    <div class="field-container">
      <input type="submit" class="btn-submit btn-search" value="Go">
      <div class="form-group">
        <label for="search-field" class="sr-only">Search</label>
        <input type="search" class="autocomplete" id="search-field" placeholder="Search on Veritas.com">
      </div>
    </div>
    
  </div>
</div>
<!-- /Search -->
  </nav>
</div>
<!-- /Main navigation -->
    </div>
  </div>
</header>
<!-- /Header -->


