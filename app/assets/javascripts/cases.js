$(document).ready(function() {
  bindEvents();
 })

function bindEvents(){

  $('.vote-defendant').on("ajax:success", addDefendant)
  $('.vote-plaintiff').on("ajax:success",addPlaintiff)
  $('.commentsBox').on("ajax:success", addComment)
  $(document).on('ajax:success', '#like', updateVote)
  $(document).on('ajax:success', '#dislike', updateVote)
  // $(document).on('ajax:error', '#dislike', wtf)
}
    function addComment(e, data, status, xhr){
      $('.commentsBox').append(data)
    };

    function addPlaintiff(e, data, status, xhr){
      $("#plaintiff_vote_count").text(data);
    };

    function addDefendant(e, data, status, xhr){
      $("#defendant_vote_count").text(data);
    };

    function updateVote(e, data, status, xhr){
      var x = "." + data[2] + "up"
      var y = "." + data[2] + "down"
      $(x).text(data[0])
      $(y).text(data[1])
      console.log($(x))
    }

    function wtf(){
      console.log('wtf')
    }



