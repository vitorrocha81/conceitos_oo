class ContaPoupanca < Conta

  def initialize(args)
    super(args)
  end

  def atualizar(juros)
    @saldo = @saldo * (1 + juros)
  end
end
