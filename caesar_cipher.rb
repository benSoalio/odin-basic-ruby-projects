# function to cipher a char
def cipher_char (char, key)
   char_ascii = char.ord
   ascii_after_shift = char_ascii  + (key % 26)
   if (char == char.downcase)  
      # case sum over 122 (wrap "z" to "a")
      if ascii_after_shift > 122 
         (ascii_after_shift - 122 + 96).chr
      elsif  97 <= ascii_after_shift && ascii_after_shift <= 122 
         (ascii_after_shift).chr
      else
         char_ascii.chr
      end
   elsif (char == char.upcase)
      # case sum over 122 (wrap "z" to "a")
      if ascii_after_shift > 90 
         (ascii_after_shift - 90 + 64).chr.upcase
      elsif  65 <= ascii_after_shift && ascii_after_shift <= 90
         (ascii_after_shift ).chr.upcase
      else
         char_ascii.chr
      end
   end
end

def caesar_cipher (word, key)
   return "Key has to be an integer between 0 and 25" if key.class == String   
   # Break the word into ann array of character && Transform each element into ASCII number 
    word.split("").map {|char| cipher_char(char, key)}.join("") 
end

p caesar_cipher('Ee', -5)

