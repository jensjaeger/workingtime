#!/usr/bin/ruby
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
SEC_PER_MINUTE = 60
times = []
 
#get times from windows systeminfo
#Systembetriebszeit:                     0 Tage, 0 Stunden, 10 Minuten, 0 Sekunden
uptime_string = `systeminfo | grep Systembetriebszeit`
uptime_string.slice!(0..28)
time_strings = uptime_string.split(',')
time_strings.each do |s|
times << s.gsub(/[A-Za-z\s]+/, '')
end
 
#do some calculation
seconds = times[0].to_i *  HOURS_PER_DAY * MINUTES_PER_HOUR * SEC_PER_MINUTE
seconds = seconds + times[1].to_i * MINUTES_PER_HOUR * SEC_PER_MINUTE
seconds = seconds + times[2].to_i * SEC_PER_MINUTE
seconds = seconds + times[3].to_i
now = Time.now
login = now - seconds
if (times[0].to_i != 0)
  times[1] = times[1].to_i + times[0] * HOURS_PER_DAY  
end
 
#print it
puts login.strftime("Login:        %H:%M")
puts now.strftime("Now:          %H:%M")
puts "======================"
puts "Working time: #{times[1].to_i} h #{times[2].to_i} m"