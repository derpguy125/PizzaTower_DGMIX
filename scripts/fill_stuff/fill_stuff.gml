function seconds_to_fill(seconds) {
	return (seconds * room_speed);
}

function fill_to_time(_fill) {
	var minutes, seconds;
	
	seconds = floor(_fill / 60) % 60
	minutes = floor(_fill / 60 / 60)
	
	var string_secs;
	
	if seconds < 10 string_secs = "0" + string(seconds)
	else string_secs = string(seconds)
	
	return string(minutes) + ":" + string_secs
}