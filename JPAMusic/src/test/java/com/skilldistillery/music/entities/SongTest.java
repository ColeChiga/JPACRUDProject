package com.skilldistillery.music.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.*;

import jakarta.persistence.*;

class SongTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Song song;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAMusic");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception{
		em = emf.createEntityManager();
		song = em.find(Song.class, 1);
	}
	
	@AfterEach
	void tearDown() throws Exception{
		em.close();
		song = null;
	}
	
	
	@Test
	void test_song_basic_mapping() {
		assertNotNull(song);
		assertEquals("American Pie", song.getTitle());
	}
	@Test
	void test_song_data_types() {
		assertNotNull(song);
		assertEquals("American Pie", song.getTitle());
		assertEquals("Don McLean", song.getArtist());
		assertEquals("American Pie", song.getAlbum());
		assertEquals("1971-10-01", song.getReleaseDate().toString());
		assertEquals("08:42", song.getLength());
		assertEquals("Folk Rock", song.getGenre());
	}
}
