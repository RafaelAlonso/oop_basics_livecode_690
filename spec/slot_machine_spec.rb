require_relative "../slot_machine"

def test_combination_score(combination, score)
  it "deveria retornar #{score} pontos para #{combination}" do
    machine = SlotMachine.new(combination)
    expect(machine.score).to eq(score)
  end
end

describe SlotMachine do

  describe '#score' do
    test_combination_score(["joker", "star", "bell"], 0)
    test_combination_score(["joker", "cherry", "cherry"], 5)
    test_combination_score(["joker", "seven", "seven"], 10)
    test_combination_score(["joker", "bell", "bell"], 15)
    test_combination_score(["joker", "star", "star"], 20)
    test_combination_score(["joker", "bell", "joker"], 25)
    test_combination_score(["bell", "joker", "joker"], 25)
    test_combination_score(["cherry","cherry","cherry"], 10)
    test_combination_score(["seven","seven","seven"], 20)
    test_combination_score(["bell","bell", "bell"], 30)
    test_combination_score(["star","star","star"], 40)
    test_combination_score(["joker","joker","joker"], 50)
  end
end