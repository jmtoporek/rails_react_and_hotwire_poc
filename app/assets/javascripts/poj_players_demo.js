const fetchPlayersHtml = async (queryParam) => {
  const playersFrameUrl = `/players/get_players_html?query=${queryParam}`;
  const response = await fetch(playersFrameUrl);
  const playersHtmlFragment = await response.text();
  return playersHtmlFragment;
}

const updatePlayersHtml = (playersHtml) => {
  let tbody = document.createElement('TBODY');
  tbody.setAttribute("id", "players");
  // This works but its odd that this is self correcting, that the tbody from playersHtml gets plucked, that its not double tagged
  tbody.innerHTML = playersHtml;
  const playersDomElement = document.getElementById("players");
  const tablePlayers = playersDomElement.parentNode;
  tablePlayers.replaceChild(tbody, playersDomElement);
}

document.addEventListener('DOMContentLoaded', (event) => {
  const $queryInput = document.getElementById("query");
  if ($queryInput) {
    $queryInput.addEventListener("keyup", (event) => {
      const queryParam = event.target.value;
      fetchPlayersHtml(queryParam).then(playersHtml => {
        updatePlayersHtml(playersHtml);
      });
    });
  }
})