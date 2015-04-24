class User < ActiveRecord::Base
  before_save {self.email = email.downcase}

  has_attached_file :avatar,
    styles: {medium: "400x400>", thumb: "100x100>"},
    default_url: "/images/user/:style/missing_user.png"

  ROLES = %w{admin user}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :role , inclusion: ROLES
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
