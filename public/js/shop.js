var shopController = (function() {

    var img = document.getElementsByTagName('img');
    construct();

    function construct() {
        for( var i=0; i < img.length; i++ ) {
            console.log(img[i]);
            img[i].addEventListener('mouseenter', _zoomPicture);
            img[i].addEventListener('mouseleave', _normalPicture);
        }
    }

    function _zoomPicture() {
        this.classList.add('img-big');
    }

    function _normalPicture() {
        this.classList.remove('img-big');
    }

})();