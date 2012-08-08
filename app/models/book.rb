class Book < ActiveRecord::Base
  attr_accessible :isbn, :name, :picatt
  has_attached_file :picatt, 
  		:styles => { :medium => "300x300>", :thumb => "100x100>" }
  # has_attached_file :pic,
  #                   :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  #                   :url => "/system/:attachment/:id/:style/:filename",
  #                   :styles => { :medium => "300x300>", :thumb => "100x100>"}
end
