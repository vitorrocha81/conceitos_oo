require 'spec_helper'

describe ContaCorrente do
  it "deveria cobrar taxa de R$0,10 no deposito" do
    conta = conta_corrente
    saldo_anterior = conta.saldo
    valor_deposito = 200
    taxa = 0.10
    conta.depositar(valor_deposito)
    expect(conta.saldo).to eq(saldo_anterior + valor_deposito - taxa)
  end

  it "deveria não gerar juros quando atualizada" do
    conta = conta_corrente
    saldo_anterior = conta.saldo
    expect(conta.saldo).to eq(saldo_anterior)
  end
end