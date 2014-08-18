var urlMatches = location.href.match(/#k=([0-9]+)\.([a-f0-9]+)/);

if (urlMatches !== null) {
	var uid = urlMatches[1];
	var key = urlMatches[2];

	localStorage.setItem("uid", uid);
	localStorage.setItem("key", key);
}
