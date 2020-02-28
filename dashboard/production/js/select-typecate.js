function getSelectedText(elementId) {
    var elt = document.getElementById(elementId);
    if (elt.selectedIndex == -1) return null;
    return elt.options[elt.selectedIndex].text;
}
var _e_type_category = document.getElementsByClassName("type-category")[0];
_e_type_category.addEventListener("change", function(){
    var select_idcat = this.options[this.selectedIndex].value;
    if(select_idcat > -1){
      select_category_by_idcatetype(select_idcat);
    }
});
// var select_idcat = _e_type_category.options[_e_type_category.selectedIndex].value;
//   if(select_idcat > -1){
//     select_category_by_idcatetype(select_idcat);
//   }

function select_category_by_idcatetype(select_idcattype){
  var _csrf_token = document.getElementsByName("csrf-token")[0].getAttribute("content");
  var http = new XMLHttpRequest();
  var host = window.location.hostname;
  var url = url_home+"/admin/menuhascate/bytype/"+select_idcattype;
  //console.log(url);
  //var params = JSON.stringify({"sel_idcategory":select_idcat});
  http.open("POST", url, true);

  http.setRequestHeader("X-CSRF-TOKEN", _csrf_token);

  http.setRequestHeader("Accept", "application/json");

  http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  //var load = _e_frm_reg.getElementsByClassName("loading")[0];
  //load.style.display = "block";
  var _e_catebyidcatetype = document.getElementsByClassName("catebyidcatetype")[0];
  http.onreadystatechange = function() {
      if(http.readyState == 4 && http.status == 200) {
           var myArr = JSON.parse(this.responseText);
           _e_catebyidcatetype.innerHTML =  myArr['result'];      
			     }    
  }
  http.send();
  //http.send(params);
}
function isRealValue(obj){
  return obj && obj !== 'null' && obj !== 'undefined';
}
//add category to menu
//make call ajax
function makeAjaxCall(idmenu, obj, callback){
   var _csrf_token = document.getElementsByName("csrf-token")[0].getAttribute("content");
   var xhr = new XMLHttpRequest();
   var url = url_home + "/admin/menu/additem/"+idmenu;
   xhr.open("POST", url, true);
   xhr.setRequestHeader("X-CSRF-TOKEN", _csrf_token);
   xhr.setRequestHeader("Accept", "application/json");
   xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
   var params = JSON.stringify(obj);
   xhr.send(params);
   xhr.onreadystatechange = function(){
     if (xhr.readyState === 4){
        if (xhr.status === 200){
           console.log("xhr done successfully");
           var resp = xhr.responseText;
           var respJson = JSON.parse(resp);
           callback(respJson);
        } else {
           console.log("xhr failed");
        }
     } else {
        console.log("xhr processing going on");
     }
   }
   console.log("request sent succesfully");
}

function processUserDetailsResponse(userData){
  _data = userData.idmenuhascate;
  console.log(_data);
  return _data;
} 
//end make call
function errorHandler(statusCode){
 console.log("failed with status", status);
}


