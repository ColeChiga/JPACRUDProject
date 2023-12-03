<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Song</title>
</head>
<body>
<a href="home.do">home</a>
	<h1>Add Song</h1>
	<form action="addSong.do" method="POST">
				Title: <input type="text" name="title" required="required"/> 
				Release Date: <input type="date" name="releaseDate" /> 
				Artist: <input type="text" name="artist" required="required"/>
				Album <input type="text" name="album" /> 
				length: <input type="text" name="length" value="0"/> 
				genre: <input type="text" name="genre" /> 
				
				<input type="submit"
					value="Show song" />
			</form>
	
</body>
</html>