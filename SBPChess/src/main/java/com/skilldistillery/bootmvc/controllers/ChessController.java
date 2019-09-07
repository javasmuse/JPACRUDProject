package com.skilldistillery.bootmvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping(path = "getChess.do", method = RequestMethod.GET)
	public ModelAndView getChess(@RequestParam("cid") int cid) { 
		ModelAndView mv = new ModelAndView();
		
		Chess chess = chessDAO.findById(cid);
		mv.addAllObjects("chess", chess);
		mv.setViewName("WEB-INF/chess/show.jsp");
		return mv
	}
	
	@RequestMapping(path ="/")
	public String index() {
		return "WEB-INF/index.jsp"; 
	}
	
	@RequestMapping(path = "getFilm.do")
	public String showChess(@RequestParam("cid") Integer cid, Model model) {
		Chess c = chessDAO.findById(cid);
		model.addAttribute("chess", c);
//		return "WEB-INF/film/show.jsp";  // could be ModelAndView, choices
		return "chess/show";
	}

}


