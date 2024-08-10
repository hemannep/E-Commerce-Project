<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>GadgetHub</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Customer/CSS/style.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Customer/CSS/footer.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Customer/CSS/account.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Customer/CSS/image.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Customer/CSS/products.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Customer/CSS/user.css">
		<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
	<style type="text/css">
		.swiper{
			width: 80%;
			height:fit-content;
		}
		.swiper-slide img{
			width: 100%;	
		}
		.swiper .swiper-button-prev,.swiper .swiper-button-next{
			color: #ff523b;
		}
		.swiper .swiper-pagination-bullet-active{
			background: #ff523b;
		}
		.header{
			width: 100vw;
			height: 100vh;
			background-image: url(${pageContext.request.contextPath}/images/background.webp);
		}

	</style>
	
	</head>
<body>
<div class="header">
		<div class="container">
			<div class="navbar">
				<div class="logo">
					<a href="/Java/home"> <img src="${pageContext.request.contextPath}/images/logo.png" width="125px"> </a>
				</div>
		  	  <nav>
				<ul id="MenuItems">
					<li><a href="/Java/home"> Home </a></li>
					<li><a href="/Java/products"> Products </a></li>
					<li><a href="${pageContext.request.contextPath}/Customer/contact.jsp"> Contacts </a></li>
					<c:if test="${empty sessionScope.user}">
		            	<li><a href="/Java/login"> Login</a></li>
		            </c:if>
					
					
				</ul>
		  	  </nav>
				<div class="search-box">
					<form action="/Java/products/search" class="search-box-container" method="GET" style="background-color: transparent!important;">
			            <input type="search" class="search-txt" id="search-box" placeholder="search here..." name="query">
			        </form>
				  </div> 
				<div class="headerimg">
				
				 <c:if test="${not empty sessionScope.user}">
            	<a href="/Java/cart"> <img src="${pageContext.request.contextPath}/images/cart.png" width="30px" height="30px"> </a>
				
				<a href="/Java/profile"> <img src="${pageContext.request.contextPath}/images/heman.jpg"  class= "icon-image" width="38px" height="32px"> </a>
            </c:if>
					
				
				<img src="${pageContext.request.contextPath}/images/menu.png" class="menu-icon" onclick="menutoggle()">
				</div>
			</div>
		
 
  	
			<div class="row">
					<div class="col-2">
						<h1>Every Tech Needs<br> GadgetHub is Here for you </h1>
					   		<p> Exclusive Tech Gadgets</p>
					       <a href="/Java/products" class="btn"> Explore Now &#8594; </a> 
					</div>
				<div class="col-2">
					<img src="${pageContext.request.contextPath}/images/login.jpeg" width="750px" height="550px">
				</div>
			</div>
		</div>

  		<br>
  		<br>

 
    <!-- ---------- ---------featured products------------ -------- -->

    	<div class="small-container">
    		<h2 class="title"> Featured Products </h2>
    			<div class="row">
    			<c:forEach var="product" items="${products}">
      			 <div class="col-4">
    					<img src="${product.image}">
    					<h4> ${product.name }</h4>
    						<div class="rating">
    						 <c:forEach var="i" begin="0" end="${product.rating}">
							   <i class="fa fa-star"></i>
							</c:forEach>
    						</div>
    					<p> Rs. ${product.price} </p>
    					<c:if test="${product.quantity>0 }">
    					<a href="/Java/cart/add?prodId=${product.id}&price=${product.price}&quantity=1" class="btn disabled"> Add to cart </a>
    					</c:if>
    					<c:if test="${product.quantity<=0 }">
    					<a href="#" class="btn disabled"> Out of Stock </a>
    					</c:if>
    				</div>
            </c:forEach>
    				
    			</div>
    			<br>
    			<br>
    			<br>



<!-- ------------------- Latest Products------------------------------- --> 
				<br>
				<br>
				<br>
    			<h2 class="title"> Latest Products </h2>
    				<div class="row">
    				
    				<c:forEach var="product" items="${products}">
      			 <div class="col-4">
    					<img src="${product.image}">
    					<h4> ${product.name }</h4>
    						<div class="rating">
    						 <c:forEach var="i" begin="0" end="${product.rating}">
							   <i class="fa fa-star"></i>
							</c:forEach>
    						</div>
    					<p> Rs. ${product.price} </p>
    					<c:if test="${product.quantity>0 }">
    					<a href="/Java/cart/add?prodId=${product.id}&price=${product.price}&quantity=1" class="btn disabled"> Add to cart </a>
    					</c:if>
    					<c:if test="${product.quantity<=0 }">
    					<a href="#" class="btn disabled"> Out of Stock </a>
    					</c:if>
    				</div>
            </c:forEach>
    			</div>
    	</div>

    <!-- --------------------- offer--------------------------- ------- -->

    <div class="offer">
    	<div class="small-container">
    		<div class="row">
    			<div class="col-2">
    				<img src="${pageContext.request.contextPath}/images/S.jpg" class="offer-img" >
    			</div>
    			<div class="col-2">
    				<p>			Exclusive Sale For Special Season 			</p>
    				<h1>Sony Alpha 7 IV</h1>
    				<br>
    				<small>
                		The camera boasts a 36.3MP full-frame sensor, E-mount compatibility, a durable magnesium alloy body, a tilting LCD screen, an electronic viewfinder, diffraction correction, 4 fps continuous shooting, full HD video, Wi-Fi with NFC, and downloadable apps, making it a versatile and high-performance camera for professional photographers. </small><br>
    				<a href="products.jsp" class="btn"> Buy Now &#8594</a>
    			</div>
    		</div>
    	</div>
    </div>

   

    <!--------------- ------------brands-------------------------- -->

    <div class="brands">
    	<div class="small-container">
    		<div class="row">
    			<div class="col-5">
    				<img src="${pageContext.request.contextPath}/images/sony.png">
    			</div>
    			<div class="col-5">
    				<img src="${pageContext.request.contextPath}/images/samsung.png">
    			</div>
    			<div class="col-5">
    				<img src="${pageContext.request.contextPath}/images/lenovo.png">
    			</div>
    			<div class="col-5">
    				<img src="${pageContext.request.contextPath}/images/Dell.png">
    			</div>
    		</div>
    	</div>
    </div>
	<button id="topbutton" onclick="gototop()" style="display: block;">
    	<i class="fa fa-arrow-up"></i>
    </button>
    <script src="${pageContext.request.contextPath}/Customer/script.js"></script>
    
  <!-- --------------------- footer------------------------- -->

  <footer>
          <section id="foot">
              <div class="foot1div">
                  <ul>
                      <li class="ft" style="font-size: 19px;">Products</li>
                      <li><a href="/Java/products">Apple</a></li>
                      <li><a href="/Java/products">Samsung</a></li>
                      <li><a href="/Java/products">Lenovo</a></li>
                      <li><a href="/Java/products">Dell</a></li>
                  </ul>
              </div>
              <div class="foot2div">
                  <ul>
                      <li class="ft" style="font-size: 19px;">Social Media</li>
                      <li><a href="https://www.facebook.com/" target="_blank">Facebook</a></li>
                      <li><a href="https://www.instagram.com/" target="_blank">Instagram</a></li>
                      <li><a href="https://twitter.com" target="_blank">Twitter</a></li>
                      <li><a href="https://www.youtube.com/watch?v=QQUBrXUAxSs&ab_channel=TahalkaNonStop"
                              target="_blank">Youtube</a></li>
                  </ul>
              </div>
              <div class="foot3div">
                  <ul>
                      <li class="ft" style="font-size: 19px;">Contact US</li>
                      <li><a href="mailto:gadgethub@gmail.com" target="_blank"> gadgethub@gmail.com</a></li>
                      <li><a href="tel:+977 9856015734">+977 9856015734</a></li>
                      <li><a href="https://www.google.com/maps/@28.2128919,83.9613899,15.61z" target="_blank">
                              New-Road,
                              Pokhara-</a></li>
                  </ul>
              </div>

          </section>
          <section id="foot2">
              <div>
                  <p>&copy; Copyright 2024 -<a href="home.html">GadgetHub</a></p>
              </div>

          </section>
      </footer>

   <!-- ---------- ---------js for toggle menu-------------------- -->
   
   <script>
   		var MenuItems = document.getElementById("MenuItems");

   		MenuItems.style.maxHeight = "0px";

   		function menutoggle(){
			if(MenuItems.style.maxHeight == "0px")
			{
				MenuItems.style.maxHeight = "200px";
			}
			else{
				MenuItems.style.maxHeight = "0px";
			}
		}

   </script>
<!-- -------------------------js for slider-------------- -->

	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

	<script>
			const swiper = new Swiper('.swiper', {
  			autoplay:{
  				delay:3000,
  				disableOnInteraction:false,
  			},
  		loop: true,

  		pagination: {
   		 	el: '.swiper-pagination',
   		 	clickable:true,
  		},

  		navigation: {
    		nextEl: '.swiper-button-next',
   		 	prevEl: '.swiper-button-prev',
  		},

		})
	</script>
</body>
</html>