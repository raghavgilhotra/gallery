class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
 
  attr_accessible :username
  has_many :albums, dependent: :destroy
  validates :username , presence: true
end
