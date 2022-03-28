var a;
function show_hide(){
    if(a==1){
        document.getElementById("show_hide").style.display="inline";
        return a=0;
    }
    else {
        document.getElementById("show_hide").style.display="none";
        return a=1;
    }
}