package com.skilldistillery.music.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;

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
	public String addSong(@RequestParam("choice") String choice, Model model) {
		model.addAttribute("songList", songDao.findAll());
		if (choice.equals("addSong")) {
			return "song/addSong";
		}
		if (choice.equals("editSong")) {
			return "song/updateSong";
		}
		if (choice.equals("removeSong")) {
			return "song/deleteSong";
		}
		else {
			return "home";
		}
	}

	@PostMapping({ "addSong.do" })
	public String addSong(@RequestParam("title") String title, @RequestParam("releaseDate") String stringDate,
			@RequestParam("artist") String artist, @RequestParam("album") String album,
			@RequestParam("length") String length, @RequestParam("genre") String genre, Model model) {
		LocalDate releaseDate = convertDate(stringDate);
		length=checkLength(length);
		Song newSong = new Song(title, releaseDate, artist, album, length, genre);
		
		model.addAttribute("song", songDao.create(newSong));
		model.addAttribute("songList", songDao.findAll());
		
		return "song/addSong";
	}
	

	@PostMapping({ "editSong.do" })
	public String editSong(@RequestParam("id") int id, @RequestParam("title") String title, @RequestParam("releaseDate") String stringDate,
			@RequestParam("artist") String artist, @RequestParam("album") String album,
			@RequestParam("length") String length, @RequestParam("genre") String genre, Model model) {
		LocalDate releaseDate = convertDate(stringDate);
		length=checkLength(length);
		
		Song editSong = new Song(title, releaseDate, artist, album, length, genre);

		model.addAttribute("editedsong", songDao.update(id, editSong));
		model.addAttribute("songList", songDao.findAll());

		return "song/updateSong";
	}
	@PostMapping({ "removeSong.do" })
	public String removeSong(@RequestParam("id") int id, Model model) {
		
		model.addAttribute("removedSong", songDao.findByID(id));
		model.addAttribute("removed", songDao.delete(id));
		model.addAttribute("songList", songDao.findAll());
		
		return "song/deleteSong";
	}
	
	private LocalDate convertDate (String string) {
		LocalDate date = null;
		date= LocalDate.parse(string);
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
