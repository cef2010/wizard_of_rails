$(document).ready(function(){
  $(document).on('click', '.populate', function(){
    $.ajax({
      url: '/populator',
      type: 'GET',
      success: function(data){
        $('#gem_demo_first_name').val(data.first_name)
        $('#gem_demo_last_name').val(data.last_name)
        $('#gem_demo_birthdate').val(data.birth_date)
        $('#gem_demo_address').val(data.address)
        $('#gem_demo_city').val(data.city)
        $('#gem_demo_state').val(data.state)
        $('#gem_demo_zip').val(data.zip)
      },
      error: function(data){
      }
    })
  });

});
