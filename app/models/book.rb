class Book < ActiveRecord::Base
	has_many :transactions
	has_many :patrons, through: :transactions
	belongs_to :genre
  validates :title, presence: true
  validates :author_last_name, presence: true
  validates :author_first_name, presence: true
  validates :isbn_10, presence: true

  def author_name
    "#{author_first_name} #{author_last_name}"
  end

  def checked_out?
    if self.transactions.any? then
      if self.transactions.last.transaction_type_id == 1 then
        true
      else
        false
      end
    else
      false
    end
  end

  def due_date
    if self.checked_out? then
      self.transactions.last.created_at + 2.weeks
    else
      Time.now + 2.weeks
    end
  end

  def due_soon?
    if (2.days.ago..Time.now)===self.due_date then true else false end
  end

  def overdue?
    if self.due_date.past? then true else false end
  end

  def check_out(patron)
    self.transactions.create(patron_id: patron.id,transaction_type_id: 1,book_id: self.id)
  end

  def check_in()
    self.transactions.create(transaction_type_id: 2,book_id: self.id)
  end

  def self.all_checked_out
    Book.find_by_sql("select books.* from (select book_id, max(transactions.id) from transactions where transaction_type_id = 1 group by book_id) transactions inner join books on transactions.book_id = books.id")
  end
end
