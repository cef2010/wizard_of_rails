$(document).ready(function(){
  $(document).on('click', '.hm-reveal', function(){
    $('.hm-intro').removeClass('hide');
    $('.hm-user-table').removeClass('hide');
    $('.hm-doctor-table').removeClass('hide');
    $(this).addClass('hide');
  });

  $(document).on('click', '.hmt-reveal', function(){
    $('.hmt-intro').removeClass('hide');
    $('.hmt-couple').removeClass('hide');
    $('.hmt-vendor').removeClass('hide');
    $('.hmt-contract').removeClass('hide');
    $('.contract-intro').removeClass('hide');
    $(this).addClass('hide');
  });

  $(document).on('click','.hone-reveal', function(){
    $('.h-one-intro').removeClass('hide');
    $('.h-one-user').removeClass('hide');
    $('.h-one-business').removeClass('hide');
    $(this).addClass('hide');
  });






});
