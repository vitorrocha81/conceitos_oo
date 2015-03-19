class Conta

  attr_accessor :numero, :titular, :saldo, :limite

  def initialize(dados)
    @numero= dados[:numero]
    @titular= dados[:titular]
    @saldo= dados[:saldo]
    @limite= dados[:limite]
  end

  def sacar(valor)
    if(valor > @saldo + @limite)
      false
    else
     @saldo = @saldo - valor
     true
    end
  end

  def depositar(valor)
    @saldo = @saldo + valor
  end

  def transfere(conta_destino, valor)
    if(sacar(valor))
      conta_destino.depositar(valor)
    else
      false
    end
  end

  def no_limite?
    @saldo < 0
  end

  def ==(conta)
    false unless conta.is_a?(Conta)
    @numero == conta.numero && @saldo == conta.saldo && @limite == conta.limite && @titular.nome == conta.titular.nome
  end
end