def ciper(message)
  letters_to_convert = message.split(//)
  converted_message = ""
  letters_to_convert.each do |letter|
    converted_letter = convert_letter(letter,3)
    converted_message.concat(converted_letter)
  end
  puts converted_message
end

def convert_letter(letter,shift_factor)
  convert_letter = letter.ord - shift_factor
  case 
  when letter.match?(/\s+/)
    convert_letter = letter
  when letter.match?(/[[:punct:]]/)
    convert_letter = letter
  when letter.match?(/\R/)
    convert_letter = letter
  when convert_letter < 65
    convert_letter = 90-(letter.ord - (convert_letter))
  when convert_letter < 97 && convert_letter > 90
    convert_letter = 122 - (letter.ord - (convert_letter))
  end
  return convert_letter.chr
end

ciper("hello world, my name is N. 
  nice to meet you")