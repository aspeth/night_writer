require './lib/night_object'

class Reader < NightObject
  def translated_text
    translated_text = braille_to_english(@incoming_text.chomp)
  end
end