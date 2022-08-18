def decode_char(code_morse)
  morse_array = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---',
                 '-.-', '.-..', '--', '-.', '---', '.--.', '--.-', '.-.', '...', '-', '..-', '...-',
                 '-..-', '-.--', '--..']

  char_array = %w[a b c d e f g h i j k l m n
                  o p q r s t u v x y z]
  idx_code_morse = morse_array.find_index(code_morse)
  char_array[idx_code_morse].upcase
end

def decode_word(word)
  array_of_letters = word.split(/ /)
  decode_array_word = array_of_letters.map { |letter| decode_char(letter) }
  decode_array_word.join
end

def decode_message(message)
  array_of_words = message.split(/   /)
  decode_array_message = array_of_words.map { |words| decode_word(words) }
  puts decode_array_message.join(' ')
end

decode_message('-- -.--   -. .- -- .')
decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
