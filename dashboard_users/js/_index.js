var url_string = window.location.href;
var url = new URL(url_string);
var _filter = url.searchParams.get("filter");
$.ajax({
    url: "viewlist/user_assetslistview.php",
    type: "POST",
    data: {filter: _filter},
    cache: false,
    success: function (data) {
        $('#assetlist_tbody').html(data);
       
    }
});