$(document).on('turbolinks:load', function () {
    // $('#events').DataTable();
    $('.p_date').datetimepicker({
        format: "YYYY-MM-DD"
    });
});