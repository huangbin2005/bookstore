class Lendbook < ActiveRecord::Base
  belongs_to :employee
  belongs_to :book
  attr_accessible :date, :returndate  ,:employee_id,:book_id,:status
end
