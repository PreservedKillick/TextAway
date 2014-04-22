class Contact < ActiveRecord::Base

  validates :name, :presence => true
  validates :number, :presence => true, :numericality => true, :length => { is: 10 }
  has_many :messages

end
