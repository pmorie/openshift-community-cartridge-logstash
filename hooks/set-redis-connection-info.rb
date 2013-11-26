#!/usr/bin/ruby
gear_id = ARGV.shift
domain = ARGV.shift
ARGV.shift.split(' ').each do |env_var|
    key = env_var.split('=')[0][2..-1]
    val = env_var.split('=')[1]
    File.open("env/#{key}", 'w'){ |f| f.puts val }
end
