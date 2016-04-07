# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

genres = Genre.create([
{name: 'police thriller'   },
{name: 'spy thriller'      },
{name: 'modern proletariat'},
{name: 'modern utopian'    },
{name: 'suspense'          },
{name: 'comedy'            },
{name: 'romance'           },
{name: 'XBLANKX'           }])

books = Book.create([
{title: 'Without Remorse'                  ,author_last_name: 'Clancy' ,author_first_name: 'Tom'    ,rating: '9'  ,isbn_10: '0425143325', isbn_13: '9780425143322', genre: genres.first   ,publish_date: '1994-08-01 00:00:00', is_fiction: '1'},
{title: 'Red Rabbit'                       ,author_last_name: 'Clancy' ,author_first_name: 'Tom'    ,rating: '7'  ,isbn_10: '0425191184', isbn_13: '9780425191187', genre: genres.second  ,publish_date: '2003-07-01 00:00:00', is_fiction: '1'},
{title: 'The Hunt for Red October'         ,author_last_name: 'Clancy' ,author_first_name: 'Tom'    ,rating: '8'  ,isbn_10: '0425240339', isbn_13: '9780425240335', genre: genres.second  ,publish_date: '2010-09-01 00:00:00', is_fiction: '1'},
{title: 'The Cardinal of the Kremlin'      ,author_last_name: 'Clancy' ,author_first_name: 'Tom'    ,rating: '9'  ,isbn_10: '0425269396', isbn_13: '9780425269398', genre: genres.second  ,publish_date: '2013-10-01 00:00:00', is_fiction: '1'},
{title: 'Patriot Games'                    ,author_last_name: 'Clancy' ,author_first_name: 'Tom'    ,rating: '10' ,isbn_10: '042526940X', isbn_13: '9780425269404', genre: genres.second  ,publish_date: '2013-10-01 00:00:00', is_fiction: '1'},
{title: 'Term Limits'                      ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '9'  ,isbn_10: '1439148104', isbn_13: '9781439148105', genre: genres.second  ,publish_date: '2009-12-01 00:00:00', is_fiction: '1'},
{title: 'American Assassin'                ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '10' ,isbn_10: '1416595198', isbn_13: '9781416595199', genre: genres.second  ,publish_date: '2011-08-01 00:00:00', is_fiction: '1'},
{title: 'Kill Shot'                        ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '9'  ,isbn_10: '1416595228', isbn_13: '9781416595229', genre: genres.second  ,publish_date: '2012-08-01 00:00:00', is_fiction: '1'},
{title: 'Transfer of Power'                ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1439197032', isbn_13: '9781439197035', genre: genres.second  ,publish_date: '2010-12-01 00:00:00', is_fiction: '1'},
{title: 'The Third Option'                 ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '7'  ,isbn_10: '1439195129', isbn_13: '9781439195123', genre: genres.second  ,publish_date: '2010-12-01 00:00:00', is_fiction: '1'},
{title: 'Separation of Power'              ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1439135738', isbn_13: '9781439135730', genre: genres.second  ,publish_date: '2009-06-01 00:00:00', is_fiction: '1'},
{title: 'Executive Power'                  ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '143918965X', isbn_13: '9781439189658', genre: genres.second  ,publish_date: '2010-05-01 00:00:00', is_fiction: '1'},
{title: 'Memorial Day'                     ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '7'  ,isbn_10: '0743453980', isbn_13: '9780743453981', genre: genres.second  ,publish_date: '2005-08-01 00:00:00', is_fiction: '1'},
{title: 'Consent to Kill'                  ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1416505016', isbn_13: '9781416505013', genre: genres.second  ,publish_date: '2006-09-01 00:00:00', is_fiction: '1'},
{title: 'Act of Treason'                   ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1416542264', isbn_13: '9781416542261', genre: genres.second  ,publish_date: '2007-08-01 00:00:00', is_fiction: '1'},
{title: 'Protect and Defend'               ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '7'  ,isbn_10: '1416505032', isbn_13: '9781416505037', genre: genres.second  ,publish_date: '2008-08-01 00:00:00', is_fiction: '1'},
{title: 'Extreme Measures'                 ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1416505040', isbn_13: '9781416505044', genre: genres.second  ,publish_date: '2009-08-01 00:00:00', is_fiction: '1'},
{title: 'Pursuit of Honor'                 ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1416595171', isbn_13: '9781416595175', genre: genres.second  ,publish_date: '2010-08-01 00:00:00', is_fiction: '1'},
{title: 'The Last Man'                     ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '7'  ,isbn_10: '1416595236', isbn_13: '9781416595236', genre: genres.second  ,publish_date: '2013-08-01 00:00:00', is_fiction: '1'},
{title: 'The Survivor'                     ,author_last_name: 'Flynn'  ,author_first_name: 'Vince'  ,rating: '8'  ,isbn_10: '1476783454', isbn_13: '9781476783451', genre: genres.second  ,publish_date: '2015-10-01 00:00:00', is_fiction: '1'},
{title: 'Down and Out in Paris and London' ,author_last_name: 'Orwell' ,author_first_name: 'George' ,rating: '7'  ,isbn_10: '015626224X', isbn_13: '9780156262248', genre: genres.third   ,publish_date: '1972-03-01 00:00:00', is_fiction: '1'},
{title: 'Animal Farm'                      ,author_last_name: 'Orwell' ,author_first_name: 'George' ,rating: '7'  ,isbn_10: '0451524667', isbn_13: '9780451524669', genre: genres.fourth  ,publish_date: '1986-07-01 00:00:00', is_fiction: '1'},
{title: '1984'                             ,author_last_name: 'Orwell' ,author_first_name: 'George' ,rating: '8'  ,isbn_10: '0451524934', isbn_13: '9780451524935', genre: genres.fourth  ,publish_date: '1961-01-01 00:00:00', is_fiction: '1'}])

ttypes = TransactionType.create([
{name: 'check out'},
{name: 'check in' },
{name: 'purchase' },
{name: 'return'   },
{name: 'XBLANKX'  }])

patrons = Patron.create([
{last_name: 'Doe'      ,first_name: 'John'    ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'TX', zip: '77001', phone_number: '713-123-4567'},
{last_name: 'Public'   ,first_name: 'Mary'    ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'TX', zip: '77001', phone_number: '713-123-4568'},
{last_name: 'Queue'    ,first_name: 'Susan'   ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'TX', zip: '77001', phone_number: '713-123-4569'},
{last_name: 'Williams' ,first_name: 'David'   ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'TX', zip: '77001', phone_number: '713-123-4570'},
{last_name: 'Johnson'  ,first_name: 'Lisa'    ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'TX', zip: '77001', phone_number: '713-123-4571'},
{last_name: 'Smith'    ,first_name: 'Paul'    ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'TX', zip: '77001', phone_number: '713-123-4572'},
{last_name: 'Adams'    ,first_name: 'Carl'    ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'TX', zip: '77001', phone_number: '713-123-4573'},
{last_name: 'Brown'    ,first_name: 'Bill'    ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'GA', zip: '77001', phone_number: '231-123-4574'},
{last_name: 'Davis'    ,first_name: 'John'    ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'TX', zip: '77001', phone_number: '713-123-4575'},
{last_name: 'Fowler'   ,first_name: 'Mary'    ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'TX', zip: '77001', phone_number: '713-123-4576'},
{last_name: 'Waters'   ,first_name: 'David'   ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'TX', zip: '77001', phone_number: '713-123-4577'},
{last_name: 'Cena'     ,first_name: 'John'    ,street_address: '1234 Milky St'        ,city: 'Austin'     ,state: 'TX', zip: '88888', phone_number: '713-123-4578'},
{last_name: 'Thomas'   ,first_name: 'Susan'   ,street_address: '1234 Milky Way'       ,city: 'Houston'    ,state: 'TX', zip: '77001', phone_number: '713-123-4579'}])
