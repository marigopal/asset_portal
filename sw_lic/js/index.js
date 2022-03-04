var url_string = window.location.href;
var url = new URL(url_string);
var _id = url.searchParams.get("id");
$.ajax({
    url: "viewlist/lic_viewlist.php",
    type: "POST",
    data: {_id: _id},
    cache: false,
    success: function (data) {
        $('#_index_lic_list').html(data);
        generateDTable('lic_list');
    }
});