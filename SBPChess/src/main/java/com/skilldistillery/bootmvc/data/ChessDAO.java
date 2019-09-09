package com.skilldistillery.bootmvc.data;

import java.util.List;

import com.skilldistillery.chess.entities.Chess;

public interface ChessDAO {

	Chess findById(int id);

	List<Chess> findAll();

	public Chess createNewGame(Chess chee);

	public Chess update(int id, Chess chee);

	public boolean destroy(int id);

}
