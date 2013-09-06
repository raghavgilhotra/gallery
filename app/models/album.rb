class Album < ActiveRecord::Base
  attr_accessible :name, :photos_attributes
  has_many :photos, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :photos, :reject_if => proc { |attributes| attributes[:avatar].blank? }
end
