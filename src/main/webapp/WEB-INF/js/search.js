/**
 * 
 */
$(document).ready(function(){
  $("#sInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTableData tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
