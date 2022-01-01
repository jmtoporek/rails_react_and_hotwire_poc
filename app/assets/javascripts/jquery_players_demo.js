// TODO: add debounce to input
// TODO: move to webpack perhaps?
// TODO: import jquery from here?
console.log('load the jquery demo');
const playersFrameUrl = '/players/get_players_html';
$(function() {
  const $queryInput = $("#query");
  $queryInput.keyup(function(event) {
    let ajaxUrl = playersFrameUrl;
    if (event.target.value.length > 0) {
      ajaxUrl = `${ajaxUrl}?query=${event.target.value}`;
    }
    $.get( ajaxUrl, function( players_frame_html ) {
      $("#players").replaceWith(players_frame_html );
    });
  });
});