for (var i = 0; i < array_length(__get_timers()); i++) {
	var timers = __get_timers();
	var timer = timers[i]
	
	timer.time--
	
	
	if (timer.time <= 0 && !timer.end_time) {
		timer.end_time = true;
		timer._function();
	}
}
