package com.skilldistillery.bootmvc.data;

import java.util.List;

import com.skilldistillery.chess.entities.Chess;

public interface ChessDAO {

	Chess findById(int id);

	List<Chess> findAll(); 
	
	
}
