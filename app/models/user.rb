class User < ActiveRecord::Base
  
  # relacionamentos
  has_many :project_memberships, :conditions => "leaved is null"
  has_many :time_logs
  has_many :projects, :through => :project_memberships

  # validações
  validates_presence_of :login, :password, :name, :email, :message => 'é necessário'
  validates_length_of :login, :in => 5..100, :message => 'so pode ter entre 5 e 100 caracteres'
  validates_length_of :password, :in => 5..50, :message => 'so pode ter entre 5 e 50 caracteres'
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/, :message => 'inválido'
  validates_uniqueness_of :login, :message => 'o campo login deve ser único'
  validates_uniqueness_of :email, :message => 'o campo email deve ser único'

  def self.logon(username_or_email,password)
	user = User.first :conditions => ["(login = ? or email = ?) and password = ?",
	   username_or_email,username_or_email,password]
	user
  end
end

