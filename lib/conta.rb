class Conta

  attr_accessor :numero, :nome, :saldo, :limite

  def initialize(dados)
    @numero= dados[:numero]
    @nome= dados[:nome]
    @saldo= dados[:saldo]
    @limite= dados[:limite]
  end

  def sacar(valor)
    if(valor > @saldo + @limite)
      false
    else
     @saldo = @saldo - valor
    end
  end

  def depositar(valor)
    @saldo = @saldo + valor
  end
  
  def no_limite?
    @saldo < 0
  end

  def ==(conta)
    @numero == conta.numero && @saldo == conta.saldo && @limite == conta.limite && @nome == conta.nome
  end
end
