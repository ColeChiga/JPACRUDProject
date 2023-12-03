<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Song</title>
</head>
<body>
	<a href="home.do">home</a>
	<h1>Edit Song</h1>

		<table border="1">


			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Artist</th>
				<th>Album</th>
				<th>Release Date</th>
				<th>Length (mm:ss)</th>
				<th>Genre</th>
				<th>Submit</th>
			</tr>
			<c:forEach items="${songList}" var="song">
				<tr>
					<form action="editSong.do" method="POST">
					<th><input type="text" name="id" value="${song.id}"readonly="readonly"/></th>
					<th><input type="text" name="title" value="${song.title}"/></th>
					<th><input type="text" name="artist" value="${song.artist}"/></th>
					<th><input type="text" name="album" value="${song.album}"/></th>
					<th><input type="date" name="releaseDate" value="${song.releaseDate}"/></th>
					<th><input type="text" name="length" value="${song.length}"/></th>
					<th><input type="text" name="genre" value="${song.genre}"/></th>
					<th><input type="submit" value="Edit Song" /></th>
				</form>
			</tr>
			</c:forEach>
		</table>


</body>
</html>