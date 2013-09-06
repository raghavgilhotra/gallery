class Photo < ActiveRecord::Base
  belongs_to :album
  has_many :tags, dependent: :destroy
  attr_accessible :avatar, :tag_list, :tags ,:name, :tags_attributes
  has_attached_file :avatar, :styles =>{ :large => "500x500>", :medium => "600x600>", :thumb => "100x100>"}, :default_url => "/images/:style?missing.png"
  accepts_nested_attributes_for :tags, :reject_if => proc { |attributes| attributes[:name].blank? }
end
