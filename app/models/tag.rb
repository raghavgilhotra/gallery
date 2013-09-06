class Tag < ActiveRecord::Base
  belongs_to :photo
  attr_accessible :name 
end
