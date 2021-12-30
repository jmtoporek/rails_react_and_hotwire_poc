import React, { useState } from 'react';

const PlayersSearchComponent = (props) => {
  
  return (
    <div>
      <h3>React component for PlayersSearchComponent</h3>
      
      <table className="table table-striped table-sm">
        <thead>
          <tr>
            <th>Name</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          { props.players.map((player, index) => {
            const showPath = `${window.location.href}/${player.id}`;
            const editPath = showPath + '/edit';
            return (<tr key={index}>
              <td>{player.name}</td>
              <td><a href={showPath}>Show</a></td>
              <td><a href={editPath}>Edit</a></td>
            </tr>);
          })}
        </tbody>
      </table>
    </div>
  );
};

export default PlayersSearchComponent;