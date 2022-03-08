require './lib/writer'

night_writer = Writer.new
night_writer.translate
puts "Created '#{ARGV[1]}' containing #{night_writer.incoming_character_count} characters"
