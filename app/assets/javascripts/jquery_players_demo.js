const playersFrameUrl = '/jquery/players/players_frame?';
$(function() {
  if (document.location.href.includes('jquery') ) {
    $("#page-title").text('jQuery as Hotwire Demo');

    const $queryInput = $("#query");
    $queryInput.keyup(function(event) {
      let ajaxUrl = playersFrameUrl;
      if (event.target.value.length > 0) {
        ajaxUrl = ajaxUrl + `query=${event.target.value}`;
      }
      $.get( ajaxUrl, function( players_frame_html ) {
        $("#players").replaceWith(players_frame_html );
      });
    });
  }
});