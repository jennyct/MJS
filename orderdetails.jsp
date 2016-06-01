<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="ordersBean" class="bean.ordersBean" scope="request" />
<jsp:useBean id="shoesBean" class="bean.shoesBean" scope="request" />

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Details</title>
        <style>
        .col-4 {width: 50;
                margin-right: 50%;
                float: left;
                padding: 1em 3em;
        }
        .col-6 {width: 50;
                margin-left: 50%;
                float: left;
                padding: 1em 3em;
        }
        </style>
    </head>
    
    <body>
      
      

<h2 align="center"><font><strong>Order Details</strong></font></h2>
<%
    List<Object> list=new ArrayList<Object>();
    list=ordersBean.getDb_Data();
    ordersBean.setObj(list.get(0));
%>

<div class = "col-4">
<br>
<strong>Name:</strong>
<%
    out.print(ordersBean.getfirst_name());

%>
             
<%
    out.print(ordersBean.getlast_name());
 %>

<br>
<strong>Address:</strong>
<%
    out.print(ordersBean.getaddress());
%>

<br>
<strong>City:</strong>
<%
    out.print(ordersBean.getcity());
%>

<br>
<strong>Zip Code:</strong>
<%
    out.print(ordersBean.getzipcode());
%>   
</div>

<table align="center" cellpadding="5" cellspacing="5" border="1">
    
<tr bgcolor="steelblue">
<td><b>Name</b></td>
<td><b>Price</b></td>
<td><b>Color</b></td>
<td><b>Material</b></td>
<td><b>Description</b></td>
<td><b>Quantity</b></td>

      
        
</tr>
    
<%
List<Object> list2=new ArrayList<Object>();
list2=shoesBean.getDb_Data();
int number = 0;

    for(int j = 0; j < list2.size(); j++){
     shoesBean.setObj(list2.get(j));
%>
<tr>
 
<td>
<% 

     out.print(shoesBean.getname());

%>
</td>
<td>
<% 

    out.print(shoesBean.getprice());
    number = number + Integer.parseInt(shoesBean.getprice());


%>
 </td>
 <td>
<% 

    out.print(shoesBean.getcolor());

%>
 </td>
 <td>
<% 

    out.print(shoesBean.getmaterial());

%>
 </td>
 <td>
<% 

    out.print(shoesBean.getdescription());

%>
 </td>
 <td>
<% 

    out.print(shoesBean.getquantity());
    number = number * Integer.parseInt(shoesBean.getquantity());

%>
</td>
</tr>
        
<%  } %>
</table>

<div class = "col-6">
<b>
<strong>Shipping:</strong>
<%
    out.print(ordersBean.getshipping());

%>
</b>
</p>
<p>
<b>
<strong>Total:</strong>
<%

out.print(number);

%>
</b>
</div>

    </body>
</html>
