package com.skilldistillery.bootmvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.bootmvc.data.ChessDAO;
import com.skilldistillery.chess.entities.Chess;

@Controller
public class ChessController {

	@Autowired
	private ChessDAO chessDAO;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {
		List<Chess> chess = chessDAO.findAll();
		model.addAttribute("chess", chess);
		return "index";
	}

	@RequestMapping(path = "getChess.do")
	public ModelAndView showChess(@RequestParam("cid") Integer cid) {
		Chess c = chessDAO.findById(cid); // finding games by id
		ModelAndView mv = new ModelAndView();
		mv.addObject("chess", c);
		mv.setViewName("chess/show");
		return mv;
	}

	@RequestMapping(path = "addChessGame.do")
	public String addNew() {
		return "chess/addChessGame";
	}

	@RequestMapping(path = "addGame.do", method = RequestMethod.POST)
	public String addGame(@Valid Chess chess, Errors errors, Model model) {
		Chess newChess;
		if (errors.getErrorCount() != 0) {
			return "chess/addChessError";
		}
		newChess = chessDAO.createNewGame(chess);
		model.addAttribute("newChess", newChess);
		return "chess/details";

	}
	
	@RequestMapping(path= "delete.do")
	public String deleteGame() {
		return "chess/deleteGame"; 
	}

	@RequestMapping(path = "deleteChess.do", method = RequestMethod.GET)
	public String deleteChess(@RequestParam("cid") Integer cid, Model model) {
		boolean isDeleted = chessDAO.destroy(cid);
		if (isDeleted) {
			model.addAttribute("isDeleted", isDeleted);
			return "chess/deleteSuccess";
		} else {
			return "chess/deleteError";
		}
	}
	
	@RequestMapping(path= "updateGame.do")
	public String update() {
		return "chess/updateGame"; 
	}

	@RequestMapping(path = "updateGameP1.do")
	public ModelAndView gametoUpdate(@RequestParam("cid") Integer cid) {
		Chess c = chessDAO.findById(cid); // finds a game by id and displays
		ModelAndView mv = new ModelAndView();
		mv.addObject("chess", c);
		mv.addObject("cid", cid);
		mv.setViewName("chess/updateGame2");
		return mv;
	}
	
	@RequestMapping(path ="updateGameP2.do", method = RequestMethod.POST)
	public String updateGameP2(@RequestParam("cid") Integer cid, Chess chess, Model model) {
		Chess upChess = chessDAO.update(cid, chess); 
		model.addAttribute("upChess", upChess);
		return "chess/details";
	}
}

