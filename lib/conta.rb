class Conta

  attr_accessor :numero, :cliente, :saldo, :limite

  def initialize(dados)
    @numero= dados[:numero]
    @cliente= dados[:cliente]
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
    @numero == conta.numero && @saldo == conta.saldo && @limite == conta.limite && @cliente == conta.cliente
  end
end