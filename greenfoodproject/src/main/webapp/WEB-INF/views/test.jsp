<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>lab.naminsik.com</title>
<link href="https://vjs.zencdn.net/7.10.2/video-js.css" rel="stylesheet" />
<style>
body {
	margin: 0;
	padding: 0;
}

#video {
	width: 100%;
	height: 100vh;
}
</style>
<script src="https://vjs.zencdn.net/7.8.2/video.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/videojs-contrib-hls/5.15.0/videojs-contrib-hls.min.js"></script>

</head>
<body>
	<video id=video width=100% class="video-js" controls>
		<source src="https://d3gr4nmrit7xq0.cloudfront.net/ohgu2.m3u8"
			type="application/x-mpegURL">
	</video>
	<script>
		var player = videojs('video');
		// player.play();type="application/x-mpegURL video/mp4
	</script>
	<!-- <video src="https://d3gr4nmrit7xq0.cloudfront.net/ohgu2.mp4" width='400' controls autoplay></video> -->
</body>
</html>