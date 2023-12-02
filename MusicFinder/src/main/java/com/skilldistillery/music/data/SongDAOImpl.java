package com.skilldistillery.music.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.music.entities.Song;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class SongDAOImpl implements SongDao {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Song findByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Song> findAll() {
		System.out.println ("Find all 1*************************");
		
		String jpql = "SELECT song FROM Song song";
		System.out.println(jpql);
		
		List<Song> results = em.createQuery(jpql, (Song.class)).getResultList();
		System.out.println(results.size() + "*************************");
		return results;
		
		
//		String input = "SELECT s FROM Song s";
//		
//		return em.createQuery(input, Song.class).getResultList();
	}

	@Override
	public Song create(Song song) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Song update(int songId, Song song) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int songId) {
		// TODO Auto-generated method stub
		return false;
	} 
	


}
