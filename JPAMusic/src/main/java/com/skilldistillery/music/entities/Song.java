package com.skilldistillery.music.entities;

import java.time.LocalDate;
import java.util.Date;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;



@Entity
public class Song {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String title;
	@Column(name = "release_date")
	private LocalDate releaseDate;
	private String artist;
	private String album;
	private String length;
	private String genre;

//constructors	
	public Song() {
	}
	
	public Song( String title, LocalDate releaseDate, String artist, String album, String length, String genre) {
		this.title = title;
		this.releaseDate = releaseDate;
		this.artist = artist;
		this.album = album;
		this.length = length;
		this.genre = genre;
	}

private int convertLength(String length) {
		String temp[]=length.split(":"); 
		int minutes=Integer.parseInt(temp[0]);
		int seconds=Integer.parseInt(temp[1]);
	
		seconds=seconds+(minutes*60);
		
		
		return seconds;
	}

//get/set
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public LocalDate getReleaseDate() {
		
		return releaseDate;
	}

	public void setReleaseDate(LocalDate releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getLength() {
		
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}
	
//hash and equals
	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Song other = (Song) obj;
		return id == other.id;
	}
	
//to string
	@Override
	public String toString() {
		return "Song [id=" + id + ", title=" + title + ", release_date=" + releaseDate + ", artist=" + artist
				+ ", album=" + album + ", length=" + length + ", genre=" + genre + "]";
	}

}
