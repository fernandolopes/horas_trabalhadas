class CreateDefaultUser < ActiveRecord::Migration
  def self.up
	User.create :login => "teste", :password => "teste", :name => "Teste User", :email => "test@domail.com"
  end

  def self.down
	User.first(:conditions => {:login => "teste"}).destroy
  end
end
