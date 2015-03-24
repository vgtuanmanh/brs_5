class User < ActiveRecord::Base
  before_save {self.email = email.downcase}

  ROLES = %w{admin user}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :role , inclusion: ROLES
end
