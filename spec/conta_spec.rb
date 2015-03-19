require 'spec_helper'

describe Conta do
  it "deveria conseguir criar um objeto do tipo Conta" do
    numero = "2303-2"
    nome = "Jose da Silva"
    saldo = 1000.10
    limite = 500
    conta = Conta.new(numero, nome, saldo, limite)
    expect(conta.numero).to eq numero
    expect(conta.nome).to eq nome
    expect(conta.limite).to eq limite
    expect(conta.saldo).to eq saldo
  end
end
