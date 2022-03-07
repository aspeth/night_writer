require './lib/night_reader'

night_reader = NightReader.new
puts "Created '#{ARGV[1]}' containing #{night_reader.incoming_character_count} characters"
