$(function() {
  $("[rel=tooltip]").tooltip();
  $('.chosen-select').chosen();
  $('.chosen-select-deselect').chosen({ allow_single_deselect: true });
  
  // dirty fix for chosen in modals
  $('.modal .chosen-container').css('width', '100%')  
});
