const contextRoot = "/" + window.location.pathname.split( '/' )[1];

const addToCart = function(productId, parameterName, token){
    let quantity = document.getElementById('sst').value;

    if(isNaN(quantity))
        quantity = 1;

    $.ajax({
        url: contextRoot + '/rest/cart/add/' + productId + `?${parameterName}=${token}` + '&quantity=' + quantity,
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