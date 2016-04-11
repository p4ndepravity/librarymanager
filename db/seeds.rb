# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.create([
{name: 'police thriller'   },
{name: 'spy thriller'      },
{name: 'modern proletariat'},
{name: 'modern utopian'    },
{name: 'suspense'          },
{name: 'comedy'            },
{name: 'romance'           },
{name: 'XBLANKX'           }])

genres = Genre.all
Book.create([
{title: 'Without Remorse'                  ,author_last_name: 'Clancy' ,author_first_name: 'Tom'    ,rating: '9'  ,isbn_10: '0425143325', isbn_13: '9780425143322', genre_id: genres.first.id   ,publish_date: '1994-08-01 00:00:00', is_fiction: '1'},
{title: 'Red Rabbit'                       ,author_last_name: 'Clancy' ,author_first_name: 'Tom'    ,rating: '7'  ,isbn_10: '0425191184', isbn_13: '9780425191187', genre_id: genres.second.id  ,publish_date: '2003-07-01 00:00:00', is_fiction: '1'},
{title: 'The Hunt for Red October'         ,author_last_name: 'Clancy' ,author_first_name: 'Tom'    ,rating: '8'  ,isbn_10: '0425240339', isbn_13: '9780425240335', genre_id: genres.second.id  ,publish_date: '2010-09-01 00:00:00', is_fiction: '1'},
{title: 'The Cardinal of the Kremlin'      ,author_last_name: 'Clancy' ,author_first_name: 'Tom'    ,rating: '9'  ,isbn_10: '0425269396', isbn_13: '9780425269398', genre_id: genres.second.id  ,publish_date: '2013-10-01 00:00:00', is_fiction: '1'},
{title: 'Patriot Games'                    ,author_last_name: 'Clancy' ,author_first_name: 'Tom'    ,rating: '10' ,isbn_10: '042526940X', isbn_13: '9780425269404', genre_id: genres.second.id  ,publish_date: '2013-10-01 00:00:00', is_fiction: '1'},
{title: 'Term Limits'                      ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '9'  ,isbn_10: '1439148104', isbn_13: '9781439148105', genre_id: genres.second.id  ,publish_date: '1997-08-01 00:00:00', is_fiction: '1'},
{title: 'American Assassin'                ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '10' ,isbn_10: '1416595198', isbn_13: '9781416595199', genre_id: genres.second.id  ,publish_date: '2010-10-12 00:00:00', is_fiction: '1'},
{title: 'Kill Shot'                        ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '9'  ,isbn_10: '1416595228', isbn_13: '9781416595229', genre_id: genres.second.id  ,publish_date: '2012-02-07 00:00:00', is_fiction: '1'},
{title: 'Transfer of Power'                ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1439197032', isbn_13: '9781439197035', genre_id: genres.second.id  ,publish_date: '1999-07-01 00:00:00', is_fiction: '1'},
{title: 'The Third Option'                 ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '7'  ,isbn_10: '1439195129', isbn_13: '9781439195123', genre_id: genres.second.id  ,publish_date: '2000-10-31 00:00:00', is_fiction: '1'},
{title: 'Separation of Power'              ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1439135738', isbn_13: '9781439135730', genre_id: genres.second.id  ,publish_date: '2001-10-01 00:00:00', is_fiction: '1'},
{title: 'Executive Power'                  ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '143918965X', isbn_13: '9781439189658', genre_id: genres.second.id  ,publish_date: '2003-05-01 00:00:00', is_fiction: '1'},
{title: 'Memorial Day'                     ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '7'  ,isbn_10: '0743453980', isbn_13: '9780743453981', genre_id: genres.second.id  ,publish_date: '2004-05-01 00:00:00', is_fiction: '1'},
{title: 'Consent to Kill'                  ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1416505016', isbn_13: '9781416505013', genre_id: genres.second.id  ,publish_date: '2005-10-11 00:00:00', is_fiction: '1'},
{title: 'Act of Treason'                   ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1416542264', isbn_13: '9781416542261', genre_id: genres.second.id  ,publish_date: '2006-10-10 00:00:00', is_fiction: '1'},
{title: 'Protect and Defend'               ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '7'  ,isbn_10: '1416505032', isbn_13: '9781416505037', genre_id: genres.second.id  ,publish_date: '2007-10-30 00:00:00', is_fiction: '1'},
{title: 'Extreme Measures'                 ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1416505040', isbn_13: '9781416505044', genre_id: genres.second.id  ,publish_date: '2008-10-28 00:00:00', is_fiction: '1'},
{title: 'Pursuit of Honor'                 ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1416595171', isbn_13: '9781416595175', genre_id: genres.second.id  ,publish_date: '2009-12-01 00:00:00', is_fiction: '1'},
{title: 'The Last Man'                     ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '7'  ,isbn_10: '1416595236', isbn_13: '9781416595236', genre_id: genres.second.id  ,publish_date: '2012-11-13 00:00:00', is_fiction: '1'},
{title: 'The Survivor'                     ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1476783454', isbn_13: '9781476783451', genre_id: genres.second.id  ,publish_date: '2015-10-06 00:00:00', is_fiction: '1'},
{title: 'Down and Out in Paris and London' ,author_last_name: 'Orwell' ,author_first_name: 'George' ,rating: '7'  ,isbn_10: '015626224X', isbn_13: '9780156262248', genre_id: genres.third.id   ,publish_date: '1972-03-01 00:00:00', is_fiction: '1'},
{title: 'Animal Farm'                      ,author_last_name: 'Orwell' ,author_first_name: 'George' ,rating: '7'  ,isbn_10: '0451524667', isbn_13: '9780451524669', genre_id: genres.fourth.id  ,publish_date: '1986-07-01 00:00:00', is_fiction: '1'},
{title: '1984'                             ,author_last_name: 'Orwell' ,author_first_name: 'George' ,rating: '8'  ,isbn_10: '0451524934', isbn_13: '9780451524935', genre_id: genres.fourth.id  ,publish_date: '1961-01-01 00:00:00', is_fiction: '1'}])

TransactionType.create([
{name: 'check out'},
{name: 'check in' },
{name: 'purchase' },
{name: 'return'   },
{name: 'XBLANKX'  }])

if Rails.env.development? or Rails.env.test? then
  (1..100).each do |i|
    title_array = [Faker::Commerce.product_name,Faker::Company.name,Faker::Company.bs,Faker::Commerce.department,Faker::Company.catch_phrase]
    Book.create(title: title_array[rand(0..4)].titlecase, 
                author_last_name: Faker::Name.last_name, 
                author_first_name: Faker::Name.first_name, 
                rating: rand(1..10), 
                isbn_10: Faker::Number.number(10), 
                isbn_13: Faker::Number.number(13), 
                genre_id: rand(1..7),
                publish_date: Faker::Time.between(100.years.ago, Time.now, :all),
                is_fiction: rand(0..1))
  end

  Patron.create last_name: 'Cena', first_name: 'John', street_address: Faker::Address.street_address, city: 'Austin', state: 'TX', zip: Faker::Address.postcode, phone_number: Faker::PhoneNumber.cell_phone
  (1..100).each do |i|
    Patron.create(last_name: Faker::Name.last_name, 
                  first_name: Faker::Name.first_name, 
                  street_address: Faker::Address.street_address,
                  city: Faker::Address.city, 
                  state: Faker::Address.state_abbr, 
                  zip: Faker::Address.postcode, 
                  phone_number: Faker::PhoneNumber.cell_phone)
  end

  Book.all.each do |book|
    patron = Patron.find(rand(1..Patron.count))
    book.transactions.create patron_id: patron.id, transaction_type_id: 1, created_at: Faker::Time.between(3.weeks.ago, 3.hours.ago, :all)
  end

  (1..(Book.count/2)).each do |i|
    t = Transaction.find((i*2)-1)
    book = t.book
    patron = t.patron
    Transaction.create patron_id: patron.id, book_id: book.id, transaction_type_id: 2, created_at: Faker::Time.between(t.created_at, Time.now, :all)
  end
else
  Patron.create([
  {last_name: 'Rapp', first_name: 'Mitchell', street_address: '3433 Bayview Dr', city: 'Chesapeake', state: 'MD', zip: '20732', phone_number: '999-999-9999'}])

  patron = Patron.first

  patron.transactions.create book_id: 23, transaction_type_id: 1, created_at: (Time.now - 16.days)
  patron.transactions.create book_id: 1, transaction_type_id: 1, created_at: (Time.now - 12.days)
  patron.transactions.create book_id: 5, transaction_type_id: 1, created_at: (Time.now - 1.days)
  patron.transactions.create book_id: 3, transaction_type_id: 1, created_at: (Time.now - 1.month)
  patron.transactions.create book_id: 3, transaction_type_id: 2, created_at: (Time.now - 2.weeks)
end
