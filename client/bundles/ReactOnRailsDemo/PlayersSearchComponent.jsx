import React, { useState } from 'react';

const PlayersSearchComponent = (props) => {

  const [players, setPlayers] = useState(props.players);

  const confirmDestroy = (event) => {
    const answer = window.confirm("are you sure?");
    if (answer) {
      // proceed to destroy
    } else {
      event.preventDefault();
    }
  }

  const submitSearchQuery = (event) => {
    const queryParam = event.target.value;
    const searchURL = `${window.location.href}/search.json?query=${queryParam}`;
    fetch(searchURL)
    .then(response => response.json())
    .then(data => {
      console.log('response for search is ', data);
      setPlayers(data);
    })
  }
  
  return (
    <div>
      <h3>React component for PlayersSearchComponent</h3>

      <div>
        <label htmlFor="query">Search by name:</label>
        <input 
          onKeyUp={submitSearchQuery}
          type="text" 
          name="query" 
          id="query" />
      </div>

      <table className="table table-striped table-sm">
        <thead>
          <tr>
            <th>Name</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          { players.map((player, index) => {
            const showPath = `${window.location.href}/${player.id}`;
            const editPath = showPath + '/edit';
            return (<tr key={index}>
              <td>{player.name}</td>
              <td><a href={showPath}>Show</a></td>
              <td><a href={editPath}>Edit</a></td>
              <td>
                <form 
                  method="post" 
                  action={showPath}>
                  <input 
                    type="hidden" 
                    name="_method" 
                    value="delete" />
                  <button 
                    type="submit"
                    className="btn btn-link bootstrap-destroy-button"
                    onClick={confirmDestroy}>Destroy</button>
                </form>
              </td>
            </tr>);
          })}
        </tbody>
      </table>
    </div>
  );
};

export default PlayersSearchComponent;