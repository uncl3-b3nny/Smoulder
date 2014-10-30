class User < ActiveRecord::Base
  has_many :events
  has_many :user_suggestions
  has_many :suggestions, through: :user_suggestions
  accepts_nested_attributes_for :events
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
