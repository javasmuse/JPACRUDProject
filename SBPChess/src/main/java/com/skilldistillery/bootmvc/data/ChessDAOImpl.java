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
	private EntityManager em; //never close this!

	@Override
	public Chess findById(int id) {
		return em.find(Chess.class, id);
	}
	
	@Override
	public List<Chess> findAll() {
		String query = "SELECT c FROM Chess c";
		return em.createQuery(query, Chess.class).getResultList();
	}
}
