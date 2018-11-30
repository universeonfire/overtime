class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts 
  has_many :auditlogs
  has_many :hands_associations, class_name: 'Hand'
  has_many :hands, through: :hands_associations

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name, :last_name ,:ssn ,:company
  validates_numericality_of :ssn
end
