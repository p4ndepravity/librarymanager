class Patron < ActiveRecord::Base
	has_many :transactions
	has_many :books, through: :transactions

  def name
    "#{first_name} #{last_name}"
  end
end
