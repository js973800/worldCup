function filter(){

    var value, name, item, i;

    value = document.getElementById("sese").value.toUpperCase();
    item = document.getElementsByClassName("ch-con");

    for(i=0;i<item.length;i++){
      name = item[i].getElementsByClassName("worlda");
      if(name[0].innerHTML.toUpperCase().indexOf(value) > -1){
        item[i].style.display = "block";
      }else{
        item[i].style.display = "none";
      }
    }
  }