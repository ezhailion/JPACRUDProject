package com.skilldistillery.gamelibrary.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.gamelibrary.entities.Game;
@Service
@Transactional
public class GameDaoImpl implements GameDAO {

	@PersistenceContext
	private EntityManager em;
	


	@Override
	public Game findById(int gameId) {
		Game idResult = em.find(Game.class, gameId);
		if (idResult != null) {
			return idResult;
		} else {
			return null;
		}
	}

	@Override
	public List<Game> findAll() {
		String jpql = "SELECT game FROM Game game";
		List<Game> results = em.createQuery(jpql, Game.class).getResultList();
		if (results.size() > 0) {
			return results;
		} else {
			return null;
		}
	}

	@Override
	public Game create(Game game) {
		em.persist(game);
		if (em.contains(game)) {
			return game;
		} else
			return null;
	}

	@Override
	public Game update(int gameId, Game game) {
		Game managedGame = em.find(Game.class, gameId);
		if (managedGame != null) {
			managedGame.setTitle(game.getTitle());
			managedGame.setCoverImageURL(game.getCoverImageURL());
			return managedGame;
		} else
			return null;

	}

	@Override
	public boolean deleteById(int gameId) {
		Game gameForDelete = em.find(Game.class, gameId);
		if (gameForDelete != null) {
			em.remove(gameForDelete);
		} else {
			// tje game was found and deleted
			return true;
		}
		// no game was found to delete
		return false;
	}

}
