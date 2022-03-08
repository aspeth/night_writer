require './lib/night_object'

class Reader < NightObject
  def incoming_character_count
    (@incoming_text.delete("\n").length) / 6
  end
  
  def translated_text
    translated_text = braille_to_english(@incoming_text.chomp)
  end
end