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
<title>Song</title>
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

	<c:choose>
		<c:when test="${! empty song}">
			<div class="container-fluid">
			<div class="row align-items-start">
				<div class="col-6">
					<h1>${song.title}</h1>
					<h2>by ${song.artist}</h2>
					<h3>album: ${song.album}</h3>
						<ul>
							<li>Genre: ${song.genre}</li>
							<li>Length: ${song.length}</li>
							<li>Release Date: ${song.releaseDate}</li>
						</ul>
						<img alt="Album Artwork Unavailable" src="${song.albumArt}" width="315" height="315">
					</div>
			<iframe class=col width="960" height="515" src="${song.video}"
				title="YouTube video player" frameborder="0"
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
				allowfullscreen></iframe>
			</div>
			<br>
			</div>
		</c:when>
		<c:otherwise>
			<h1>No song with ID ${song.id} found</h1>
		</c:otherwise>
	</c:choose>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

</body>
</html>