class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :generate_authentication_token!

  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy

  # validates :email, presence: true
  # validates :password, presence: true, on: :create
  validates :auth_token, uniqueness: true

  # with_options allow_blank: true do
  #   # validates :email, uniqueness: { case_sensitive: false }
  #   validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  #   validates :password, confirmation: true
  # end

  def generate_authentication_token!
    begin
      self.auth_token = Devise.friendly_token
    end while self.class.exists?(auth_token: auth_token)
  end
end
