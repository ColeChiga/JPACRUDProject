package com.skilldistillery.music.data;

import java.util.List;

import com.skilldistillery.music.entities.Song;


public interface SongDao{
	
	Song findByID(int id);
	List<Song> findAll();
	Song create(Song song);
	Song update(int songId, Song song);
	boolean delete(int songId);
	
}
