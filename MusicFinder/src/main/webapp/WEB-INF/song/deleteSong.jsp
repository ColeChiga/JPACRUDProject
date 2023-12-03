<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remove Song</title>
</head>
<body>
	<a href="home.do">home</a>
	<h1>Remove a Song</h1>

	<table border="1">
		<tr>
			<th></th>
			<th>ID</th>
			<th>Title</th>
			<th>Artist</th>
			<th>Album</th>
			<th>Release Date</th>
			<th>Length (mm:ss)</th>
			<th>Genre</th>
		</tr>
		<c:forEach items="${songList}" var="song">
			<tr>
				<form action=removeSong.do method=POST>
					<th><input type="submit" value="Remove Song"/></th>
					<th><input type="text" name="id" value="${song.id}"readonly="readonly"/></th>
					<th>${song.title}</th>
					<th>${song.artist}</th>
					<th>${song.album}</th>
					<th>${song.releaseDate}</th>
					<th>${song.length}</th>
					<th>${song.genre}</th>
				</form>

			</tr>
		</c:forEach>
	</table>


</body>
</html>