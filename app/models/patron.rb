class Patron < ActiveRecord::Base
	has_many :transactions
	has_many :books, through: :transactions
  validates :first_name, presence: true, 
                         length: {maximum: 20}
  validates :last_name, presence: true, 
                        length: {maximum: 20}
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :phone_number, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
