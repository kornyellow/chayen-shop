function time() {
	let date = new Date(), h = date.getHours(), m = date.getMinutes(), s = date.getSeconds(), dn = "AM";
	if(h >= 12) dn = "PM";
	if(h > 12) h = h-12;
	if(m < 10) m = "0"+m;
	if(s < 10) s = "0"+s;
	document.getElementById("time").innerHTML = h+":"+m+":"+s+" "+dn;
	setTimeout("time()");
}
time()
