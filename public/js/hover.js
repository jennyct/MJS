var sml = document.getElementsByClassName("small");

for (var i=0; i < sml.length; i++) {
	sml[i].addEventListener("mouseover", function() {
		var big = document.getElementById("main");
		big.src = this.src;
	})
}

var formController = (function() {

    var form = document.querySelector('form');
    var firstName = document.querySelector('input[name=firstName]');
    var lastName = document.querySelector('input[name=lastName]');
    var areaCode = document.querySelector('#areaCode');
    var firstNum = document.querySelector('#firstNum');
    var secondNum = document.querySelector('#secondNum');
    var city = document.querySelector('input[name=city]');
    var ccNum = document.querySelector('#ccNum');
    var ccCSC = document.querySelector('#ccCSC');

    form.action="mailto:email@example.com";
    form.method = "POST";
    form.enctype = "text/plain";
    console.log(form);

    form.addEventListener('submit', function(event) {
        event.preventDefault();


        /* Validate form
           If false, bring up alert
           Else bring up email client 
        */
        if( !_isText(firstName) )
            _alert("Enter a valid first name. No numbers.");
        else if( !_isText(lastName) )
            _alert("Enter a valid last name. No numbers.");
        else if( !_isText(city) )
            _alert("Enter a valid city. No numbers");
        else if( !_isValidZip() )
            _alert("Enter a valid zipcode");
        else if( !_isValidPhone() ) 
            _alert("Enter a valid phone number");
        else if( !_isNum(ccNum) ) 
            _alert("Invalid credit card number");
        else if( !_isNum(ccCSC) ) 
            _alert("Enter valid CVV");
        else 
            form.submit();
    });

    function _isText(element) {
        var text = element.value;
        return /^[a-z]+$/i.test(text);
    }

    function _isNum(element) {
        var text = element.value;
        return /^[0-9]+$/.test(text);
    }

    function _isValidZip() {
        var zipcode = document.querySelector('input[name=zipCode]');
        var val = zipcode.value;
        return /(^\d{5}$)|(^\d{5}-\d{4}$)/.test(val);
    }

    function _isValidPhone() {
        return _isNum(areaCode) && _isNum(firstNum) && _isNum(secondNum);
    }

    function _alert(message) {
        alert(message);
    }

})();