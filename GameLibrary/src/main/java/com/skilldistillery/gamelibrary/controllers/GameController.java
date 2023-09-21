package com.skilldistillery.gamelibrary.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.gamelibrary.data.GameDAO;
import com.skilldistillery.gamelibrary.entities.Game;

@Controller
public class GameController {
	@Autowired
	private GameDAO dao;
	
	@RequestMapping(path = { "/", "home.do" })
	public String home(Model model) {
		model.addAttribute("gameList", dao.findAll());
		return "home";
	}

	// search game by id √
	@RequestMapping(path = "getGame.do", method = RequestMethod.GET)
	public String getGame(@RequestParam("id") int gameId, Model model) {
		Game game = dao.findById(gameId);		
		model.addAttribute("game", game);
		return "view/result";
	}

	// go to the addGame.jsp for adding
	@RequestMapping(path = "addGame.do", method = RequestMethod.GET)
	public String goAddGame() {
		return "addGame";
	}

	// once addgame form submitted do ->
	@RequestMapping(path = "createGame.do", method = RequestMethod.POST)
	public String addGame(Game game, RedirectAttributes redir) {
		redir.addFlashAttribute("game", dao.create(game));
		return "redirect:gameCreated.do";
		
	}
	@GetMapping(path="gameCreated.do")
	public String gameAdded() {
		return "view/result";
	}
	
	// when editGame.do confirm game and add to model to go to the update page
	@RequestMapping(path = "editGame.do", method = RequestMethod.GET)
	public String goUpdateGame(int id, Game game, Model model) {
		Game gameToUpdate = dao.findById(game.getId());
		model.addAttribute("game", gameToUpdate);
		return "updateGame";
	}

	// after updateGame form submit save any changes then display the film
	@RequestMapping(path = "updateGame.do", method = RequestMethod.POST)
	public String updateGame(int id, Game game, Model model) {
		Game updatedGame = dao.update(id, game);
		System.out.println(updatedGame + " **************************************************8");
		model.addAttribute("game", updatedGame);
		return "gameView/result";

	}

	@RequestMapping(path = "deleteGame.do", method = RequestMethod.POST)
	public String deleteGame(@RequestParam("id") int gameId) {
		dao.deleteById(gameId);
		return "gameView/delete";
	}

}
