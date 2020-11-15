let carts = document.querySelectorAll('.add-cart');


let foodProducts = [
	{
		name: "Emerald Salutare",
		tag: "emeraldsalutare",
		price: 200,
		inCart: 0
	},
	{
		name: "Orange Pulp",
		tag: "orangepulp",
		price: 150,
		inCart: 0
	},
	{
		name: "Red Valley",
		tag: "redvalley",
		price: 300,
		inCart: 0
	},
	{
		name: "Peri Peri Pizza",
		tag: "periperipizza",
		price: 450,
		inCart: 0
	},
	{
		name: "Mexican Herb Pizza",
		tag: "mexicanherbpizza",
		price: 700,
		inCart: 0
	},
	{
		name: "Italian Cheddar Pizza",
		tag: "italiancheddarpizza",
		price: 1000,
		inCart: 0
	},
	{
		name: "Chipotle Wine Pizza",
		tag: "chipotlewinepizza",
		price: 800,
		inCart: 0
	},
	{
		name: "Cheese Burst Pizza",
		tag: "cheeseburstpizza",
		price: 600,
		inCart: 0
	},
	{
		name: "BBQ Salami Pizza",
		tag: "bbqsalamipizza",
		price: 900,
		inCart: 0
	}
]

for (let i = 0; i < carts.length; i++) {

	carts[i].addEventListener("click", function() {
		cartNumbers(foodProducts[i]);
		totalCost(foodProducts[i]);
	})
	/*console.log(carts[i]);*/
}

function onCartLoadNumbers() {
	let productNumbers = localStorage.getItem('cartNumbers');

	if (productNumbers) {
		document.querySelector(".nav-item sub span").textContent = productNumbers;
	}
}

function cartNumbers(product) {
	/*console.log(product);*/

	let productNumbers = localStorage.getItem('cartNumbers');

	productNumbers = parseInt(productNumbers);

	if (productNumbers) {
		localStorage.setItem('cartNumbers', productNumbers + 1);
		document.querySelector(".nav-item sub span").textContent = productNumbers + 1;
	} else {
		localStorage.setItem('cartNumbers', 1);
		document.querySelector(".nav-item sub span").textContent = 1;
	}

	setItems(product);
}

function setItems(product) {
	let cartItems = localStorage.getItem("productsInCart");
	cartItems = JSON.parse(cartItems);
	console.log(cartItems);

	if (cartItems != null) {

		if (cartItems[product.tag] == undefined) {
			cartItems = {
				...cartItems,
				[product.tag]: product
			}

		}
		cartItems[product.tag].inCart += 1;
	} else {
		product.inCart = 1;
		cartItems = {
			[product.tag]: product
		}

	}


	localStorage.setItem("productsInCart", JSON.stringify(cartItems));
}



function totalCost(product) {
	let cartCost = localStorage.getItem("totalCost");

	if (cartCost != null) {
		cartCost = parseInt(cartCost);
		localStorage.setItem("totalCost", cartCost + product.price);
	} else {
		localStorage.setItem("totalCost", product.price);
	}

}

function displayCart() {
	let cartItems = localStorage.getItem("productsInCart");
	cartItems = JSON.parse(cartItems);
	let productContainer = document.querySelector(".products");
	/*let totalContainer = document.querySelector(".totalContainer");*/
	let cartCost = localStorage.getItem("totalCost");
	let index = 0;
	if (cartItems && productContainer) {
		productContainer.innerHTML = '';
		Object.values(cartItems).map(item => {

			productContainer.innerHTML += `
			<div class="display" style="display:flex; padding:0; margin-bottom: 30px; border-bottom: 0.5px solid #d0a772; justify-content: space-between;" id="${index}">
				<div class="products" /*style="margin-left:-30px;"*/>
					<i class="fas fa-times" aria-hidden="true"></i>
					<div style="display:flex; flex-direction: column; margin: 0;padding: 0; position: relative;left: 15%;top: -25%">
						<img style="margin:0 10px" src="./images/${item.tag}.jpg">
						<span style="text-align: center;">${item.name}</span>
					</div>
					
				</div>
				<div class="price" style="margin-top:35px; /*padding-left:100px;*/" >
					&#x20B9;${item.price}
				</div>
				
				<div class="quantity" style="margin-top:35px; /*padding-left:120px;padding-right:10px;*/">
				
					${item.inCart}
			
				</div>
				<div class="total" style="margin-top:35px; /*padding-left:150px;padding-right:10px;*/">
					&#x20B9;${item.inCart * item.price}
				</div>
			
			</div>
			
			
		`

		})



	}

	productContainer.innerHTML += `
				<div class="cartTotalContainer">
					<h2 class="cartTotal" style="text-align: right">
						Cart Total = &#x20B9;${cartCost}
					</div>
				</div>
			`

	deleteButtons();
}



/*function removeItemFromCart(clear) {
	let product = document.getElementById(clear);
	let totality = localStorage.getItem("totalCost");
	let productNumbers = localStorage.getItem("cartNumbers");
	let cartItems = localStorage.getItem("productsInCart");
	cartItems = JSON.parse(cartItems);	

	productNumbers = parseInt(productNumbers);
	totality = parseInt(totality);
	let productCost = parseInt(product.childNodes[7].textContent);
	let productQuantity = parseInt(product.childNodes[5].textContent);
	localStorage.setItem("totalCost", totality - productCost);
	localStorage.setItem("cartNumbers", productNumbers - productQuantity);
	/*console.log(arrayCart);*/
/*product.remove();*/
/*localStorage.removeItem("productsInCart");
setItemsAgain(foodProducts[i],clear);
	
}*/

function deleteButtons() {
	let deleteButtons = document.querySelectorAll(".products i");
	let productName;
	let productNumbers = localStorage.getItem("cartNumbers");
	let cartItems = localStorage.getItem("productsInCart");
	cartItems = JSON.parse(cartItems);
	let cartCost = localStorage.getItem("totalCost");

	for (let i = 0; i < deleteButtons.length; i++) {
		deleteButtons[i].addEventListener("click", () => {
			productName = deleteButtons[i].parentElement.textContent.trim().toLowerCase().replace(/ /g, '');

			localStorage.setItem("cartNumbers", productNumbers - cartItems[productName].inCart);
			localStorage.setItem("totalCost", cartCost - (cartItems[productName].price * cartItems[productName].inCart));

			delete cartItems[productName];
			localStorage.setItem("productsInCart", JSON.stringify(cartItems));
			/*console.log(productName);*/

			displayCart();
			onCartLoadNumbers();
		})
	}
}

function seeOutput() {
	console.log("Clcike");
}

onCartLoadNumbers();
displayCart();