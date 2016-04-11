class Book < ActiveRecord::Base
	has_many :transactions
	has_many :patrons, through: :transactions
	belongs_to :genre
  validates :title, presence: true
  validates :author_last_name, presence: true
  validates :author_first_name, presence: true
  validates :isbn_10, presence: true

  def author_name
    "#{author_first_name.titlecase} #{author_last_name.titlecase}"
  end

  def checked_out?
    if self.transactions.any? and self.transactions.last.transaction_type.id == 1 then
      true
    else
      false
    end
  end

  def checkout_date
    self.transactions.last.created_at
  end

  def due_date
    self.transactions.last.created_at + 2.weeks
  end

  def due_soon?
    if (Time.now..Time.now + 2.days)===self.due_date then true else false end
  end

  def overdue?
    if self.due_date.past? then true else false end
  end

  # def check_out(patron)
  #   self.transactions.create(patron_id: patron.id,
  #                            transaction_type_id: 1,
  #                            book_id: self.id)
  # end

  # def check_in()
  #   self.transactions.create(transaction_type_id: 2,
  #                            book_id: self.id,
  #                            patron_id: self.borrower.id)
  # end

  def self.all_checked_out
    Book.find_by_sql("SELECT b.* FROM books b WHERE (SELECT t.transaction_type_id FROM transactions t WHERE t.book_id = b.id ORDER BY t.id DESC LIMIT 1) = 1;")
  end

  def borrower
    self.transactions.last.patron
  end
end
