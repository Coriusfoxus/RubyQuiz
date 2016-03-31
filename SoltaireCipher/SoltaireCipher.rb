#!/usr/bin/ruby

class SoltaireCypher
  def format_string_for_encryption(s)
    output = ""
    




    ###################
    # s.upcase!
    # s.gsub!(/[^A-Z]/, "")
    # s = s + "X" * (5 - (s.size % 5))
    

    # (s.size / 5).times do |x|
    #   output << s[x*5, 5]
    #   output << " "
    # end

    return output
  end

  def combine(formatted_string, key)
    formatted_string_as_numbers = ""
    output = ""

    for i in 0..formatted_string.size - 1 do
      if formatted_string[i].match(/[A-Z]/)
        #puts formatted_string[i].ord - ?A.ord + 1
        #puts key[i].ord - ?A.ord + 1

        combined_val = (formatted_string[i].ord - ?A.ord + 1) + (key[i].ord - ?A.ord + 1)
        if combined_val > 26
          combined_val -= 26
        end
        puts combined_val
      else
        puts ""
      end
    end
    
    return output
  end
end

sample_sentence = "This is the thing that I need to encode!"
keystream = "DWJXH YRFDG TMSHP UURXJ SDJKA AKDPQ DJAPG"

cypher = SoltaireCypher.new
cypher.format_string_for_encryption(sample_sentence)
puts sample_sentence

#formatted_string = format_string_for_encryption(sample_sentence)

#puts combine(formatted_string, keystream)
