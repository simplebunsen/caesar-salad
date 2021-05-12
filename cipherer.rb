def caesar_cipher(input, shift)

  output = ""

  chars = input.split("")

  chars.each() do |character|

    input_val = character.ord

    #check if original char is !letter
    if ((0..64) === input_val || (91..96) === input_val || (123..127) === input_val)
      output.concat(character) 
      next
    end

    #save whether the char is upcase for later restoration (WHY WOTHOUT QUESTION MARKQUE)
    is_upcase = (character.upcase === character)

    #standardize all letters to lower case to simplify process
    input_val = character.downcase.ord

    #do the shift
    shifted_val = input_val + shift

    #check for if the shift made it go out of bounds and correct it
    until in_range? do
      case
      when shifted_val > 122
        shifted_val -= 26
      when shifted_val < 97
        shifted_val += 26
      end
    end

    shifted_val = shifted_val.upcase if is_upcase
    output.concat(shifted_val.chr)   
  end
  return output
end

def in_range?(val)
  return (97..122) === val
end

puts caesar_cipher("abcde", 1)