<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Song List</title>
</head>
<body>
	<nav class="navbar navbar-expand-md bg-body-secondary">
		<div class="container-fluid">
			<h1>
				<a class="navbar-brand" href="home.do">Song Finder</a>
			</h1>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						href="choice.do?choice=Add">Add</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="choice.do?choice=Edit">Edit</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="choice.do?choice=Remove">Remove</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">Search for
							Song By Category</a>
						<ul class="dropdown-menu bg-body-secondary">
							<form action="songList.do" method="GET">
								<li class="nav-item"><Select class="nav-link active"
									name="column">
										<option value="title">Title</option>
										<option value="artist">Artist</option>
										<option value="album">Album</option>
										<option value="genre">Genre</option>
								</Select> <input class="form-control me-2" type="text" name="query"
									placeholder="Search" /></li>
								<li class="nav-item"><input class="btn btn-outline-dark"
									type="submit" value="Show song" /></li>
							</form>
						</ul></li>
					<form action="getSong.do" method="GET">
						<li class="nav-item "><input type="number" name="songId"
							placeholder="Song ID" min="1" /> <input
							class="btn btn-outline-dark " type="submit" value="Show song" /></li>
					</form>
				</ul>
			</div>
		</div>
	</nav>
	<h1>Song List</h1>
	<c:choose>
		<c:when test="${! empty songList}">
		<h2>${number} songs found with ${column} containing "${query}"</h2>
			<div class="table-responsive-lg container-fluid">
				<table class="table table-striped table-hover table-bordered ">
					<thead class="table-secondary">
						<tr>
							<th>ID</th>
							<th>Title</th>
							<th>Artist</th>
							<th>Album</th>
							<th>Release Date</th>
							<th>Length</th>
							<th>Genre</th>
						</tr>
					</thead>
					<tbody>
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
					</tbody>
				</table>
			</div>
		</c:when>
		<c:otherwise>
			<h1>No songs found with ${column} containing "${query}"</h1>
		</c:otherwise>
	</c:choose>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

</body>
</html>