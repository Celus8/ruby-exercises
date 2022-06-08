# The all-mighty Caesar Cipher

def shift_byte(lower_index, upper_index, byte, key)
  if (byte + key) > upper_index
    lower_index + (byte + key - upper_index - 1) 
  else
    byte + key
  end
end

def caesar_cipher(string, key = 0)
  shifted_bytes_array = string.bytes.map do |byte|
    if byte <= 90 && byte >= 65
      shift_byte(65, 90, byte, key)
    elsif byte <= 122 && byte >= 97
      shift_byte(97, 122, byte, key)
    else
      byte
    end
  end
  shifted_bytes_array.map {|byte| byte.chr if byte.is_a?(Numeric)}.join
end

p caesar_cipher("What a string!", 5)

