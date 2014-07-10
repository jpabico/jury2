$(document).ready(function() {
  bindEvents();
 })

function bindEvents(){

  $('.vote-defendant').on("ajax:success", addDefendant)
  $('.vote-plaintiff').on("ajax:success",addPlaintiff)
  $(document).on("ajax:success", addComment)
  $(document).on('ajax:success', '#like', updateVote)
  $(document).on('ajax:success', '#dislike', updateVote)
  // $(document).on('ajax:error', '#dislike', wtf)
}
    function addComment(e, data, status, xhr){
      $('#commentslist').append(data);
      $('#comment_body').val('');
    };

    function addPlaintiff(e, data, status, xhr){
      $("#plaintiff_vote_count").text(data.myresult);
    };

    function addDefendant(e, data, status, xhr){
      $("#defendant_vote_count").text(data.myresult);
    };

    function updateVote(e, data, status, xhr){
      $("." + data.comment_id + "up").text(data.upvotes);
      $("." + data.comment_id + "down").text(data.downvotes);
    }

    function wtf(){
      console.log('wtf')
    }



