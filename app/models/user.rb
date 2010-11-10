class User < ActiveRecord::Base
  validates_presence_of :login, :password, :name, :email, :message => 'é necessário'
  validates_length_of :login, :in => 5..100, :message => 'so pode ter entre 5 e 100 caracteres'
  validates_length_of :password, :in => 5..50, :message => 'so pode ter entre 5 e 50 caracteres'
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :message => 'inválido'
  validates_uniqueness_of :login, :message => 'o campo login deve ser único'
  validates_uniqueness_of :email, :message => 'o campo email deve ser único'
end
