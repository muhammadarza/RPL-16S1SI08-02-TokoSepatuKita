<?php 
$sid = session_id();
 ?>
 	<section id="cart_items">
 	<div class="container">
 		<div class="breadcrumbs">
 			<ol class="breadcrumbs">
 				<li><a href="#">HOME</a></li>
 				<li class="active">Shopping Cart</li>
 			</ol>
 		</div>
 		<div class="table-responsive cart_info">
 			<table class="table table-condensed">
 				<thead>
 					<tr class="cart_menu">
 						<td class="image">Item</td>
 						<td class="description"></td>
 						<td class="price">Price</td>
 						<td class="quantity">Quantity</td>
 						<td class="total">Total</td>
 						<td></td>
 					</tr>
 				</thead>
 				<tbody>
 					<?php 
 					$sql = mysql_query("SELECT * FROM tbl_order, tbl_produk WHERE tbl_order.id_session='$sid' AND tbl_order.id_produk=tbl_produk.id_produk");
 					 ?>
 				</tbody>
 			</table>
 		</div>
 	</div>
 	</section>