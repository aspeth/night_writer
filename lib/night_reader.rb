require './lib/reader'

night_reader = Reader.new
night_reader.translate
puts "Created '#{ARGV[1]}' containing #{night_reader.incoming_character_count} characters"
