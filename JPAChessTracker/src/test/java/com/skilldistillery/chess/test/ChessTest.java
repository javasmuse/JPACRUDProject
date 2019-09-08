package com.skilldistillery.chess.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.chess.entities.Chess;

class ChessTest {
	
	private static EntityManagerFactory emf; 
	private EntityManager em;
	private Chess chess; 

	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("ChessTracker");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		chess = em.find(Chess.class, 1); 
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

	@Test
	void testLocationCheckadd() {
		assertEquals("Marco Island", chess.getLocation());
	}

}
