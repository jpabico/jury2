// 2. Asynchronously load the Upload Widget and Player API code.
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// 3. Define global variables for the widget and the player.
// The function loads the widget after the JavaScript code has
// downloaded and defines event handlers for callback notifications
// related to the widget.
var widget;
var player;
function onYouTubeIframeAPIReady() {
  widget = new YT.UploadWidget('widget', {
    width: 400,
    events: {
      'onUploadSuccess': onUploadSuccess,
      'onProcessingComplete': onProcessingComplete
    }
  });
}

// 4. This function is called when a video has been successfully uploaded.
function onUploadSuccess(event) {
  alert('Video ID ' + event.data.videoId + ' was uploaded and is currently being processed.');
  $('#video-status').text('Video is processing... wait for it...')
}

// 5. This function is called when a video has been successfully processed.
function onProcessingComplete(event) {
  $('#widget').hide();
  $('#video_url').val(event.data.videoId);
  $('#video-status').text('Time for a preview!')
  player = new YT.Player('player', {
    height: 282,
    width: 500,
    videoId: event.data.videoId,
    events: {}
  });
}

// For the player to display on cases page
  var tag = document.createElement('script');
  tag.src = "https://www.youtube.com/player_api";
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

  // Replace the 'ytplayer' element with an <iframe> and
  // YouTube player after the API code downloads.
  var casePlayer;
  function onYouTubePlayerAPIReady() {
    casePlayer = new YT.Player('ytplayer', {
      height: 390,
      width: 640,
      videoId: 'M7lc1UVf-VE'
    });
  }

//   $(document).ready(function() {
//     $('#sign_up_trigger').on('click',function(event) {
//         event.preventDefault();
//         $('#sign_up_box').toggle();
//     });
// });
