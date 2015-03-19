class Conta

  attr_accessor :numero, :nome, :saldo, :limite

  def initialize(dados)
    @numero= dados[:numero]
    @nome= dados[:nome]
    @saldo= dados[:saldo]
    @limite= dados[:limite]
  end

  def sacar(valor)
    if(valor > @saldo)
      false
    else
     @saldo = @saldo - valor
    end
  end

  def depositar(valor)
    @saldo = @saldo + valor
  end

end
