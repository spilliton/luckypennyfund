
$(document).ready(function () {

  $('.contribution-select').click(function (e) {
    e.preventDefault();
    var $elem = $(e.target).closest('.contribution-select');
    var $input = $elem.find('input');
    $input.prop("checked", true);
    $("#cost-number").text($input.val());
  });

});

