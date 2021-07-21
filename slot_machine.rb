class SlotMachine
  def initialize(combination)
    @combination = combination
    @valores_unitarios = {
        "cherry" => 5,
        "seven" => 10,
        "bell" => 15,
        "star" => 20,
        "joker" => 25,
    }
  end

  def score
    if @combination.uniq.size == 1
      @valores_unitarios[@combination[0]] * 2
    elsif @combination.uniq.size == 2
      if @combination.count('joker') == 2
        # caso que o duplicado eh o joker
        @valores_unitarios['joker']
      elsif @combination.count('joker') == 0
        # caso que nao temos nenhum joker
        0
      else
        # caso que temos um joker e um par de outros simbolos
        temp_combination = @combination
        temp_combination.delete("joker")
        @valores_unitarios[temp_combination[0]]
      end
    else
      0
    end
  end

  def play
    
  end
end