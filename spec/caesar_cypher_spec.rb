require 'cypher'

describe CaesarCypher do
  it { is_expected.to be_a CaesarCypher}

  describe '#encrypt' do
    it 'returns the next letter in the alphabet when given a key of 1' do
      expect(CaesarCypher.encrypt('a',1)).to eq('b')
    end
  end
end
