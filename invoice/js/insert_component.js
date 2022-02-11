
$(document).ready(function () {
    $(document).on('click', '.add', function () {
        var html = '';
        html += '<tr>';
        html += '<td><input type="text" name="serial[]" class="form-control serial" /></td>';
        html += '<td><input type="text" name="remarks[]" class="form-control size" /></td>';
        html += '<td><button type="button" name="remove" class="btn btn-danger btn-sm remove"><span class="glyphicon glyphicon-minus"></span></button></td></tr>';
        $('#item_table').append(html);
    });


    $(document).on('click', '.remove', function () {
        $(this).closest('tr').remove();
    });

    $('#insert_form').on('submit', function (event) {
        event.preventDefault();
        var error = '';

        var form_data = $(this).serialize();
        if (error == '')
        {
            $.ajax({
                url: "_dbPage/insert.php",
                method: "POST",
                data: form_data,
                success: function (data)
                {
                    if (data == 'ok')
                    {
                        alert("Insterted");
                    }
                }
            });
        } else
        {
            $('#error').html('<div class="alert alert-danger">' + error + '</div>');
        }
    });

});
function random_tag()
{
    var random_var = 'test001';
    return(random_var);
}