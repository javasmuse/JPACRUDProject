package com.skilldistillery.bootmvc.controllers;

import java.util.List;

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
	
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {
		List<Chess> chess = chessDAO.findAll(); 
		model.addAttribute("chess", chess);
		return "index"; 
	}
	
	@RequestMapping(path = "getChess.do")
	public ModelAndView showChess(@RequestParam("cid") Integer cid) {
		Chess c = chessDAO.findById(cid);
		ModelAndView mv = new ModelAndView(); 
		mv.addObject("chess", c );
		mv.setViewName("chess/show");
		return mv;
		
//		return "WEB-INF/film/show.jsp";  // could be ModelAndView, choices
//		return "chess/show";
	}

}


