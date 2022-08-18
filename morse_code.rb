def decode_char(code_morse)
  hash_of_letters = { '·-': 'A', '–···': 'B', '–·–·': 'C', '–··': 'D', '·': 'E',
                  '··–·': 'F', '––·': 'G', '····': 'H', '··': 'I', '·–––': 'J', '–·–': 'K',
                  '·–··': 'L', '--': 'M', '–·': 'N', '---': 'O', '·––·': 'P', '––·–': 'Q',
                  '·–·': 'R', '···': 'S', '-': 'T', '··–': 'U', '···–': 'V', '·––': 'X',
                  '–·––': 'Y', '––··': 'Z' }
                  hash_of_letters[code_morse]
end

def decode_word(word)
  word = ''
  array_of_letters = word.split(/ /)
  (array_of_letters.each { |letter| word += decode_char(letter) })
  word
end

puts decode_word('-- –··· –·–·')
