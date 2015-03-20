class Conta
attr_accessor :numero, :titular, :saldo, :limite
 def new
  conta = Conta.new
 end

 def initialize (conta_params)
  @numero = conta_params[:numero]
  @titular = conta_params[:titular]
  @saldo = conta_params[:saldo]
  @limite = conta_params[:limite]
 end

 def sacar(valor)
  if valor > saldo + limite
    return false
  else
    @saldo = (saldo - valor)
  end
 end

 def depositar(deposito)
  @saldo = (saldo + deposito)
 end

 def no_limite?
   @saldo = limite
 end

 def ==(conta)
  @numero == conta.numero && @titular == conta.titular && @saldo == conta.saldo && @limite == conta.limite  
 end

 def transfere(conta_destino,valor_transferencia)
    if transferencia_ok(valor_transferencia)
    @saldo -= valor_transferencia
    conta_destino.saldo += valor_transferencia
    else
    false
    end
  end

  def transferencia_ok(valor_transferencia)
    if @saldo - valor_transferencia >= 0
    true
    else
    false
    end
  end
end

    #conta_origem = cria_conta
    #saldo_anterior_origem = conta_origem.saldo
    #conta_destino = cria_conta("3432-2", "Zenildo Bispo", 4000.54)
    #saldo_anterior_destino = conta_destino.saldo
    #valor_transferencia = 560.40
    #conta_origem.transfere(conta_destino, valor_transferencia)
    #expect(conta_origem.saldo).to eq(saldo_anterior_origem - valor_transferencia)
    #expect(conta_destino.saldo).to eq(saldo_anterior_destino + valor_transferencia)