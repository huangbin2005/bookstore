class Employee < ActiveRecord::Base
  belongs_to :department
  attr_accessible :gender, :name ,:department  ,:department_id
  #accepts_nested_attributes_for :department
end
