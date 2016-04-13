var sml = document.getElementsByClassName("small");

for (var i=0; i < sml.length; i++) {
	sml[i].addEventListener("mouseover", function() {
		var big = document.getElementById("main");
		big.src = this.src;
	})
}