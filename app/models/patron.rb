class Patron < ActiveRecord::Base
	before_save {self.email = email.downcase}
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
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, 
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: true
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

  def name
    "#{first_name.titlecase} #{last_name.titlecase}"
  end
end
