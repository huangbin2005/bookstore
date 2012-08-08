class Department < ActiveRecord::Base
  attr_accessible :description, :name, :title  ,:employees
  has_many :employees

end
