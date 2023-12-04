package com.skilldistillery.music.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.music.data.SongDao;
import com.skilldistillery.music.entities.Song;

@Controller
public class SongController {

	@Autowired
	private SongDao songDao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("songList", songDao.findAll());
		return "home";
	}

	@RequestMapping(path = { "getSong.do" })
	public String getSong(@RequestParam("songId") int id, Model model) {
		model.addAttribute("song", songDao.findByID(id));
		return "song/singleSong";
	}

	@RequestMapping(path = { "choice.do" })
	public String choiceSong(@RequestParam("choice") String choice, Model model) {
		model.addAttribute("songList", songDao.findAll());
		if (choice.equals("Add")) {
			return "song/addSong";
		}
		if (choice.equals("Edit")) {
			return "song/updateSong";
		}
		if (choice.equals("Remove")) {
			return "song/deleteSong";
		}
		else {
			return "home";
		}
	}

	@PostMapping({ "addSong.do" })
	public String addSong(@RequestParam("title") String title, @RequestParam("releaseDate") String stringDate,
			@RequestParam("artist") String artist, @RequestParam("album") String album,
			@RequestParam("length") String length, @RequestParam("genre") String genre,  @RequestParam("video") String video, @RequestParam("albumArt") String albumArt,Model model) {
		LocalDate releaseDate = convertDate(stringDate);
		length=checkLength(length);
		Song newSong = new Song(title, releaseDate, artist, album, length, genre, video, albumArt);
		
		model.addAttribute("addedSong", songDao.create(newSong));
		model.addAttribute("songList", songDao.findAll());
		
		return "song/addSong";
	}
	@PostMapping({ "undoDelete.do" })
	public String undoDelete(@RequestParam("title") String title, @RequestParam("releaseDate") String stringDate,
			@RequestParam("artist") String artist, @RequestParam("album") String album,
			@RequestParam("length") String length, @RequestParam("genre") String genre,  @RequestParam("video") String video, @RequestParam("albumArt") String albumArt, Model model) {
		
		addSong(title, stringDate, artist, album, length, genre, video, albumArt, model);
		String undone = title + " by " + artist; 
		return "song/deleteSong";
	}
	

	@PostMapping({ "editSong.do" })
	public String editSong(@RequestParam("id") int id, @RequestParam("title") String title, @RequestParam("releaseDate") String stringDate,
			@RequestParam("artist") String artist, @RequestParam("album") String album,
			@RequestParam("length") String length, @RequestParam("genre") String genre, @RequestParam("video") String video, @RequestParam("albumArt") String albumArt, Model model) {
		LocalDate releaseDate = convertDate(stringDate);
		length=checkLength(length);
		
		Song editSong = new Song(title, releaseDate, artist, album, length, genre, video, albumArt);

		model.addAttribute("editedsong", songDao.update(id, editSong));
		model.addAttribute("songList", songDao.findAll());

		return "song/updateSong";
	}
	@PostMapping({ "removeSong.do" })
	public String removeSong(@RequestParam("id") int id, Model model) {
		
		model.addAttribute("deletedSong", songDao.findByID(id));
		model.addAttribute("removed", songDao.delete(id));
		model.addAttribute("songList", songDao.findAll());
		
		return "song/deleteSong";
	}
	
	@RequestMapping(path = "songList.do" )
	public String songList(@RequestParam("column") String column, @RequestParam("query") String query , Model model) {
		model.addAttribute("column", column);
		model.addAttribute("query", query);
		List<Song> songList = songDao.findSongByColumn(column, query);
		model.addAttribute("songList", songList);
		model.addAttribute("number", songList.size());
		return "song/songList";
	}
	
	private LocalDate convertDate (String string) {
		LocalDate date = null;
		try {
		date= LocalDate.parse(string);
		} catch(DateTimeParseException dtpe) {
			date = null;
		}
		return date;
	}
	
	private String checkLength(String length) {
		
		if(length.matches("[0-9]:[0-9][0-9]")) {
			length="0"+length;
		}
		else if(!length.matches("[0-9][0-9]:[0-9][0-9]")) {
			length= null;
		}
		return length;
	}
}
