$('input[name="optionsRadios"]').on('change', function() {
  $("#cost-number").text($(this).val());
});