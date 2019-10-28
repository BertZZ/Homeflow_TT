class CaesarCypher

  def self.encrypt(string,key)
    encrypted_string = ''

    string.each_char do |char|
      puts char.ord
      char.ord+key < 123 ? (encrypted_string << char.ord+key) : (encrypted_string << (char.ord+key) - 26)
    end
    encrypted_string
  end
end
