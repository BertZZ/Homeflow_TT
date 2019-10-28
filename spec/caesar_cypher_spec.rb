require 'cypher'

describe CaesarCypher do
  it { is_expected.to be_a CaesarCypher}

  describe '#encrypt' do
    it 'returns the next letter in the alphabet when given a key of 1' do
      expect { CaesarCypher.encrypt('a',1) }.to output("b\n").to_stdout
    end

    it 'returns letters 2 away when given a key of 2' do
      expect{ CaesarCypher.encrypt('a',2) }.to output("c\n").to_stdout
    end

    it 'returns a when given z and a key of 1' do
      expect{ CaesarCypher.encrypt('z',1) }.to output("a\n").to_stdout
    end

    it 'maintains special characters' do
      expect{ CaesarCypher.encrypt('abc d ef!',1) }.to output("bcd e fg!\n").to_stdout
    end

    it 'encrypts the string homeflow correctly with a key of 3' do
      expect{ CaesarCypher.encrypt('homeflow',3) }.to output("krphiorz\n").to_stdout
    end
  end
end
