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
		return em.find(Song.class, id);
	}

	@Override
	public List<Song> findAll() {
		String jpql = "SELECT song FROM Song song";
		List<Song> results = em.createQuery(jpql, (Song.class)).getResultList();
		return results;
			}

	@Override
	public Song create(Song song) {
		
		 em.persist(song);
		 em.flush();
		 
		return song;
	}

	@Override
	public Song update(int songId, Song song) {
		
		Song editSong = em.find(Song.class, songId);
		editSong.setTitle(song.getTitle());
		editSong.setReleaseDate(song.getReleaseDate());
		editSong.setArtist(song.getArtist());
		editSong.setAlbum(song.getAlbum());
		editSong.setLength(song.getLength());
		editSong.setGenre(song.getGenre());
		
		return null;
	}

	@Override
	public boolean delete(int songId) {
		Song removeSong = em.find(Song.class, songId);
		if (removeSong.getTitle()!=null) {
			em.remove(removeSong);
			return true;
		}else {
			return false;			
		}
	} 
	


}
