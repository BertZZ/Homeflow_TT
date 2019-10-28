class CaesarCypher

  def self.encrypt(string,key)
    letters = ('a'..'z')
    encrypted_string = ''

    string.each_char {|char| encrypted_string << char.ord+key}
    encrypted_string
  end
end
