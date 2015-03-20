class Conta
attr_accessor :numero, :nome, :saldo, :limite
 def new
  conta = Conta.new 
 end

 def initialize (conta_params)
  @numero = conta_params[:numero]
  @nome = conta_params[:nome]
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
  @numero == conta.numero && @nome == conta.nome && @saldo == conta.saldo && @limite == conta.limite  
 end
end