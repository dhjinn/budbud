class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :transactions
  has_many :memberships
  has_many :admins, through: :memberships
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
