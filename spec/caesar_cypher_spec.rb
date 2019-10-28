require 'cypher'

describe CaesarCypher do
  it { is_expected.to be_a CaesarCypher}

  describe '#encrypt' do
    it 'returns the next letter in the alphabet when given a key of 1' do
      expect(CaesarCypher.encrypt('a',1)).to eq('b')
    end

    it 'returns a letter 2 away when given a key of 2' do
      expect(CaesarCypher.encrypt('a',2)).to eq('c')
    end
  end
end
