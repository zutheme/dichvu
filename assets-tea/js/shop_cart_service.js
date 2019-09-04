// function exist_item(){ 
// 	var _lcart = getCookie('lcart');
// 	if(isRealValue(_lcart)){
// 		var arr_item = JSON.parse(_lcart);
// 		var l = arr_item.length;
// 		console.log(arr_item);
// 	}
// }
// exist_item();
function func_up(element){
	var _e_parent = element.parentElement.parentElement.parentElement.parentElement;
	var _e_amount = _e_parent.getElementsByClassName("amount")[0];	
	var _amount_cart = parseInt(_e_amount.value) + 1;
	 _e_amount.value = _amount_cart;
	var _e_unit_price = _e_parent.getElementsByClassName("unit-price")[0];
	var _unit_price = parseInt(_e_unit_price.value);
	var e_total_item = _e_parent.getElementsByClassName("total-item")[0];
	var sub_total = _unit_price*_amount_cart;
	e_total_item.innerHTML = show_currency(sub_total);
	var _e_subtotal = _e_parent.getElementsByClassName("subtotal")[0];
	_e_subtotal.value = sub_total;
	total();
}

function func_down(element){
	var _e_parent = element.parentElement.parentElement.parentElement.parentElement;
	var _e_amount = _e_parent.getElementsByClassName("amount")[0];	
	var _amount_cart = parseInt(_e_amount.value);
	if(_amount_cart > 1){
		_amount_cart =  parseInt(_e_amount.value) - 1;
		_e_amount.value = _amount_cart;
	}
	 _e_amount.value = _amount_cart;
	var _e_unit_price = _e_parent.getElementsByClassName("unit-price")[0];
	var _unit_price = parseInt(_e_unit_price.value);
	var e_total_item = _e_parent.getElementsByClassName("total-item")[0];
	var sub_total = _unit_price*_amount_cart;
	e_total_item.innerHTML = show_currency(sub_total);
	var _e_subtotal = _e_parent.getElementsByClassName("subtotal")[0];
	_e_subtotal.value = sub_total;
	total();
}
function total(){
	var _e_subtotal = document.getElementsByName("subtotal");
	var total = 0;
	for (var i = _e_subtotal.length - 1; i >= 0; i--) {
		total = total + parseFloat(_e_subtotal[i].value);
	}
	var _e_row_total = document.getElementsByClassName("row-total")[0].getElementsByClassName("total")[0];
	var _total = show_currency(total);
	_e_row_total.innerHTML = _total;	
}
function remove_itemt(element){
	var _e_parent = element.parentElement.parentElement;
	_e_parent.style.display = "none";
	_e_parent.getElementsByClassName("subtotal")[0].value = 0;
	total();
}