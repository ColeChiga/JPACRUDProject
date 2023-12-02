package com.skilldistillery.music.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.music.data.SongDao;

@Controller
public class SongController {
	
	@Autowired
	private SongDao songDao;
	
	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
		model.addAttribute("songList", songDao.findAll());
		return "home"; 
	}
}
