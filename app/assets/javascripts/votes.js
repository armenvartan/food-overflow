$(document).ready(function(){
  $.get("/votes", function(data){
    $('.vote-box').html(data)
  })
  $('.vote-box.new_vote').on('click', function(e){
    console.log("hi")
    // e.preventDefault();
  })
})
