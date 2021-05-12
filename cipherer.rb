def caesar_cipher(input, shift) do

  output = ""

  input.each() do |character|

    input_val = character.ord

    #check if original char is char
    if ((0..64) === input_val || (91..96) === input_val || (123..127) === input_val) do
      output.concat(character) 
      next
    end

    #save whether original char was upcase so we can return the result to it later
    upcase? = character.upcase == character

    shifted_val = input_val + shift



    if upcase? {shifted_val = shifted_val.upcase}
    output.concat(shifted_val.chr)   
  end

  return output
end