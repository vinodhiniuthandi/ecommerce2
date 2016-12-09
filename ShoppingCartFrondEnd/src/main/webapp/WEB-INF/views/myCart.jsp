

<%@include file="/WEB-INF/views/common-header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
  
  <script>
function goBack() {
    window.history.back();
}
</script>
</head>



<body>
<style>
body{
margin:0px;
	padding:0px;
        background-image:url(images/BG13.jpg);
	background-repeat:no-repeat;
	background-size:100% 1000px;
}</style>
<div style="margin-left: 200px;">
<table  width="100%" class="view" style="margin-top: 1em; margin-right: 6em; ">
<tr>
<td colspan="5" align="center"><h4 >Categories</h4></td>
</tr>
	<tr>
	    <th align="left">S.No</th>
	
	
		<th align="left">ProductName</th>
		
		<th align="left">Quantity</th>
		<th align="left">Price</th>
        <th align="left">Proceed</th>
		<th align="left">Delete</th>		
	</tr>
	<c:forEach items="${cartList}" var="cart" varStatus="status">
		<tr>
			<td>${status.count}</td>
			
			<td>${cart.productName}</td>		
			<td>${cart.quantity}</td>
				<td>${cart.price}</td>
				
				
			<td><a href="proceed/${cart.productName}">Proceed</a></td> 
			<td><a href="deletecart/${cart.productName}" onclick="return confirm('Are You Sure? Do you Want Delete Product : ${cart.productName} ?')">delete</a></td>
		</tr>
	</c:forEach>
	<tr style="margin-top: 3em; ">
	<td colspan="3" align="right">Total Amount :</td>
	<td colspan="2">${total}</td>
	</tr>
	
</table>

<button  onclick="goBack()">Go Back</button>

<a href="Proceed/${username}"><button type="button" name="button" class="btn btn-success"> Place Order </button></a>

<div class="dropdown" style="margin-left: 8em;">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Proceed<span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><a href="onLinePayment/${username}">On Line Payment</a></li>
    
      <li class="divider"></li>
      <li><a href="cashOnDelivery/${username}">Cash On Delivery</a></li>
    </ul>
  </div>
  
  </div>
  </body>
 
