class Restaurante < ActiveRecord::Base

  validates_presence_of :nome , :message =>"deve ser preenchido"

  validates_presence_of  :endereco, :message =>"deve ser preenchido"

  validates_presence_of  :especialidades, :message =>"deve ser preenchido"

  validates_uniqueness_of :nome, :message => "Nome já cadastrado"
  validates_uniqueness_of :endereco,:message => "Endereço já cadastrado"

  validate :primeira_letra_deve_ser_maiuscula

  private
  def primeira_letra_deve_ser_maiuscula
    errors.add("nome","primeira letra deve ser maiuscula") unless nome=~ /[A-Z].*/
  end

  has_many :qualificacaos
  has_and_belongs_to_many :pratoes
end
