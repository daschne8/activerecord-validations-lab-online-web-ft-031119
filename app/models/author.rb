class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :number, length: {minimum: 10}
  #validates :name, uniqueness: true
end
