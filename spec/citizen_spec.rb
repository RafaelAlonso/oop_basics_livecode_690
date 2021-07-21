require_relative "../citizen"

describe Citizen do
  describe '#can_vote?' do
    it 'deveria falar que pessoas menores de 16 anos nao podem votar' do
      santiago = Citizen.new('bruno', 'santiago', 15)
      expect(santiago.can_vote?).to eq(false)
    end

    it 'deveria falar que pessoas com mais de 16 anos podem votar' do
      giovanni = Citizen.new('giovanni', 'guadaguadaga', 60)
      expect(giovanni.can_vote?).to eq(true)
    end
  end

  describe '#fullname' do
    it 'Deve ser retornado o nome completo' do
      rafael = Citizen.new('rafael', 'pereira', 28)
      expect(rafael.fullname).to eq('Rafael Pereira')
    end
  end
end