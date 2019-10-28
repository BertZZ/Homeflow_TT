class CaesarCypher

  def self.encrypt(string,key)7
    letters = ("a".."z")
    encrypted_string = ''

    string.each_char do |char|
      if letters.include? (char)
        char.ord+key < 123 ? (encrypted_string << char.ord+key) : (encrypted_string << (char.ord+key) - 26)
      else
        encrypted_string << char
      end
    end
    puts encrypted_string
  end
end
