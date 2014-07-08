$(document).ready(function() {

  $('.vote-defendant').on("ajax:success", function(e, data, status, xhr){
    $("#defendant_vote_count").text(data);
  });
   $('.vote-plaintiff').on("ajax:success", function(e, data, status, xhr){
    $("#plaintiff_vote_count").text(data);
  });

   $('.commentBox').on("ajax:success", function(e, data, status, xhr){
      console.log('got the comment response')})


   })
