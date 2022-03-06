require './lib/night_writer'

night_writer = NightWriter.new
night_writer.move_text
puts "Created '#{ARGV[1]}' containing #{night_writer.character_count} characters"
