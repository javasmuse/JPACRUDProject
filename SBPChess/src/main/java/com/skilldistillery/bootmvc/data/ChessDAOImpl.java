package com.skilldistillery.bootmvc.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.chess.entities.Chess;

@Transactional
@Service
public class ChessDAOImpl implements ChessDAO {

	@PersistenceContext
	private EntityManager em; // never close this!


	@Override
	public Chess findById(int id) { // find all games by id
		return em.find(Chess.class, id);
	}

	@Override
	public List<Chess> findAll() { // find all games
		String query = "SELECT c FROM Chess c";
		return em.createQuery(query, Chess.class).getResultList();
	}

	public Chess createNewGame(Chess chee) { // add a new chess game
		em.persist(chee);
		em.flush();
		em.close();
		return chee;
	}

	public Chess update(int id, Chess chee) { // update a game

		Chess changedChess = em.find(Chess.class, id);
		changedChess.setPlayer(chee.getPlayer());
		changedChess.setOpponent(chee.getOpponent());
		changedChess.setPlayerColor(chee.getPlayerColor());
		changedChess.setOutcome(chee.getOutcome());
		changedChess.setLocation(chee.getLocation());
		em.flush();
		return changedChess;
	}

	public boolean destroy(int id) {   // delete a game
		Chess chee = em.find(Chess.class, id);
		try {
			em.remove(chee);
		} catch (Exception e) {
			return false; 
		}
		em.flush();
		boolean status = false;
		status = em.contains(chee);
		em.close();
		return !status;
	}

}
