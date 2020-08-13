const contextRoot = "/" + window.location.pathname.split( '/' )[1];

const addToCart = function(productId){
    $.ajax({
        url: contextRoot + '/rest/cart/add/' + productId,
        type: 'PATCH',
        dataType: "json",
        success: function(response){
            alert("Product Successfully added to the Cart!");

        },
        error: function(){
            alert('Error while request..');
        }
    });
}

const removeFromCart = function(productId) {
    $.ajax({
        url: contextRoot + '/rest/cart/remove/'+ productId,
        type: 'DELETE',
        dataType: "json",
        success: function (response) {
            location.reload();
        },
        error: function(){
            alert('Error while request..');
        }
    });
}

$(document).ready(function() {
});