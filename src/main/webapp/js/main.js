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

function cartNumbers(product,action) {
	/*console.log(product);*/

	let productNumbers = localStorage.getItem('cartNumbers');
	let cartItems = localStorage.getItem("productsInCart");
	cartItems = JSON.parse(cartItems);

	productNumbers = parseInt(productNumbers);
	
	if (action == "decrease") {
        localStorage.setItem("cartNumbers", productNumbers - 1);
        document.querySelector(".nav-item sub span").textContent =
          productNumbers - 1;
      } else if (productNumbers) {
        localStorage.setItem("cartNumbers", productNumbers + 1);
        document.querySelector(".nav-item sub span").textContent =
          productNumbers + 1;
      } else {
        localStorage.setItem("cartNumbers", 1);
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



function totalCost(product, action) {
	let cartCost = localStorage.getItem("totalCost");
	
	if (action == "decrease") {
		cartCost = parseInt(cartCost);
		
        localStorage.setItem("totalCost", cartCost - product.price);
        
      } 

	else if (cartCost != null) {
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
				<div class="price" style="margin-top:35px; padding-left:30px;" >
					&#x20B9;${item.price}
				</div>
				
				<div class="quantity" style="margin-top:35px; padding-left:5px; /*padding-right:10px;*/">
					<i class="fas fa-chevron-circle-left mr-1 decrease"></i>
					<span class="pb-2">${item.inCart}</span>
					<i class="fas fa-chevron-circle-right ml-1 increase"></i>
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
						Cart Total = &#x20B9;${cartCost ? cartCost : 0}
					</div>
				</div>
			`

	deleteButtons();
	manageQuantity();
}


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

function manageQuantity() {
  let decreaseButton = document.querySelectorAll(".decrease");
  let increaseButton = document.querySelectorAll(".increase");
  let cartItems = localStorage.getItem("productsInCart");
  let currentQuantity = 0;
  let currentProduct = "";
  cartItems = JSON.parse(cartItems);

  for (let i = 0; i < decreaseButton.length; i++) {
    decreaseButton[i].addEventListener("click", () => {
      currentQuantity = decreaseButton[i].parentElement.querySelector("span")
        .textContent;
      currentProduct = decreaseButton[
        i
      ].parentElement.previousElementSibling.previousElementSibling
        .querySelector("span")
        .textContent.toLowerCase()
        .replace(/ /g, "")
        .trim();

      if (cartItems[currentProduct].inCart > 1) {
        cartItems[currentProduct].inCart -= 1;
        cartNumbers(cartItems[currentProduct], "decrease");
        totalCost(cartItems[currentProduct], "decrease");
        localStorage.setItem("productsInCart", JSON.stringify(cartItems));
        displayCart();
      }
    });
  }

  for (let i = 0; i < increaseButton.length; i++) {
    increaseButton[i].addEventListener("click", () => {
      currentQuantity = increaseButton[i].parentElement.querySelector("span")
        .textContent;
      currentProduct = increaseButton[
        i
      ].parentElement.previousElementSibling.previousElementSibling
        .querySelector("span")
        .textContent.toLowerCase()
        .replace(/ /g, "")
        .trim();

    
        cartItems[currentProduct].inCart += 1;
        cartNumbers(cartItems[currentProduct]);
        totalCost(cartItems[currentProduct]);
        localStorage.setItem("productsInCart", JSON.stringify(cartItems));
        displayCart();
      
    });
  }
}

function togglePopup() {
  document.getElementById("popup-1").classList.toggle("active");
}


onCartLoadNumbers();
displayCart();