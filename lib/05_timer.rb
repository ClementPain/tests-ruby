def time_string(time_in_sec)

	hours = time_in_sec / 3600
	minutes = ( time_in_sec - hours * 3600 ) / 60
	seconds = time_in_sec - hours * 3600 - minutes * 60

	if hours >= 10
		time_on_chrono = "#{hours}:"
	else
		time_on_chrono = "0#{hours}:"
	end

	if minutes >= 10
		time_on_chrono += "#{minutes}:"
	else	
		time_on_chrono += "0#{minutes}:"
	end

	if seconds >= 10
		time_on_chrono += "#{seconds}"
	else	
		time_on_chrono += "0#{seconds}"
	end

	return time_on_chrono
end
