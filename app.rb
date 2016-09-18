require 'sqlite3'
print 'What DB you want to open: '
name = gets.strip
db = SQLite3::Database.new 'BarberShop.sqlite'
db.execute "select * from #{name}" do |user|
puts user
end
db.close