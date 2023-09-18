package com.skilldistillery.gamelibrary.data;

import java.util.List;

import com.skilldistillery.gamelibrary.entities.Game;

public interface GameDAO {

	
	Game findById(int gameId);
	List<Game> findAll();
	Game create(Game game);
	Game update(int id, Game updatingGame);
	boolean deleteById(int parkId);
}
