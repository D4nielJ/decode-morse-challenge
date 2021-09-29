MAP = {
  '.-': 'A',
  '-...': 'B',
  '-.-.': 'C',
  '-..': 'D',
  '.': 'E',
  '..-.': 'F',
  '--.': 'G',
  '....': 'H',
  '..': 'I',
  '.---': 'J',
  '-.-': 'K',
  '.-..': 'L',
  '--': 'M',
  '-.': 'N',
  '---': 'O',
  '.--.': 'P',
  '--.-': 'Q',
  '.-.': 'R',
  '...': 'S',
  '-': 'T',
  '..-': 'U',
  '...-': 'V',
  '.--': 'W',
  '-..-': 'X',
  '-.--': 'Y',
  '--..': 'Z'
}.freeze

def decode_char(char)
  MAP[char.to_sym]
end

def decode_word(str)
  str.split.map { |n| decode_char(n) }.join
end

def decode(str)
  str.split('  ').map { |n| decode_word(n) }.join(' ')
end

print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.  .-. ..- -... .. . ...')
