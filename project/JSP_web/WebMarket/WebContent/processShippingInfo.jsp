<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.net.URLEncoder" %>

<%
	request.setCharacterEncoding("UTF-8");

	Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "UTF-8"));
	Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "UTF-8"));
	Cookie shippingDate = new Cookie("Shipping_shippingDate", URLEncoder.encode(request.getParameter("shippingDate"), "UTF-8"));
	Cookie country = new Cookie("Shipping_country", URLEncoder.encode(request.getParameter("country"), "UTF-8"));
	Cookie zipCode = new Cookie("Shipping_zipCode", URLEncoder.encode(request.getParameter("zipCode"), "UTF-8"));
	Cookie addressName = new Cookie("Shipping_addressName", URLEncoder.encode(request.getParameter("addressName"), "UTF-8"));
	
	int cookieAge = 24 * 60 * 60;
	
	cartId.setMaxAge(cookieAge);
	name.setMaxAge(cookieAge);
	shippingDate.setMaxAge(cookieAge);
	country.setMaxAge(cookieAge);
	zipCode.setMaxAge(cookieAge);
	addressName.setMaxAge(cookieAge);

	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(shippingDate);
	response.addCookie(country);
	response.addCookie(zipCode);
	response.addCookie(addressName);
	
	response.sendRedirect("orderConfirmation.jsp");
%>