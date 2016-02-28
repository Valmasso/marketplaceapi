class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :email, presence: true
  # validates :password, presence: true, on: :create

  # with_options allow_blank: true do
  #   # validates :email, uniqueness: { case_sensitive: false }
  #   validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  #   validates :password, confirmation: true
  # end
end
