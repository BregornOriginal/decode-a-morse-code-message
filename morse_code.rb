def decode_char(code_morse)
  morse_array = ['·-', '–···', '–·–·', '–··', '·', '··–·', '––·', '····', '··', '·–––',
                 '–·–', '·–··', '--', '–·', '---', '·––·', '––·–', '·–·', '···', '-', '··–', '···–',
                 '·––', '–·––', '––··']
  char_array = %w[a b c d e f g h i j k l m n
                  o p q r s t u v x y z]
  word_decoded = []

  idx_code_morse = morse_array.find_index(code_morse)
  char_array[idx_code_morse].upcase
end

def decode_word(word)
  array_of_letters = word.split(/ /)
  puts array_of_letters.map { |letter| decode_char(letter) }
end

decode_word('-- –··· –·–·')
