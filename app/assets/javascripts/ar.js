$(document).ready(function(){
  $('.hm-reveal').click(function(){
    $('.hm-intro').removeClass('hide');
    $('.hm-user-table').removeClass('hide');
    $('.hm-doctor-table').removeClass('hide');
    $(this).addClass('hide');
  });

  $('.hmt-reveal').click(function(){
    $('.hmt-intro').removeClass('hide');
    $('.hmt-couple').removeClass('hide');
    $('.hmt-vendor').removeClass('hide');
    $('.hmt-contract').removeClass('hide');
    $('.contract-intro').removeClass('hide');
    $(this).addClass('hide');
  });

  $('.hone-reveal').click(function(){
    $('.h-one-user').removeClass('hide');
    $('.h-one-business').removeClass('hide');
    $(this).addClass('hide');
  });






});
