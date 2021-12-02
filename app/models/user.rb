class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :name, presence: true
  validates :age, presence: true
  validates :nickname, presence: true
  validates :gender, presence: true
  validates :game_id, presence: true
  enum gender: [ :male, :female, :other ]
end
