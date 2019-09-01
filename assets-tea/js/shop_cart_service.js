function exist_item(){ 
	var _lcart = getCookie('lcart');
	if(isRealValue(_lcart)){
		var arr_item = JSON.parse(_lcart);
		var l = arr_item.length;
		console.log(arr_item);
	}
}
exist_item();