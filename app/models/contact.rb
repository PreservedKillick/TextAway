class Contact < ActiveRecord::Base

  validates :name, :presence => true
  validates :number, :presence => true
  has_many :messages

end
