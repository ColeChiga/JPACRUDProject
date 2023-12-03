<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Song List</title>
</head>
<body>

<h1>Song List</h1>
	<table border="1">
	
				<tr>
					<th>ID</th>
					<th>Title</th>
					<th>Artist</th>
					<th>Album</th>
					<th>Release Date</th>
					<th>Length</th>
					<th>Genre</th>
				</tr>
				<c:forEach items="${songList}" var="song">
					<tr>
						<th>${song.id}</th>
						<th><a href="getSong.do?songId=${song.id}">${song.title}</a></th>
						<th>${song.artist}</th>
						<th>${song.album}</th>
						<th>${song.releaseDate}</th>
						<th>${song.length}</th>
						<th>${song.genre}</th>
					</tr>
				</c:forEach>
			</table>
	
	
</body>
</html>