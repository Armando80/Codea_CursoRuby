require 'faker'
require 'date'
require 'csv'

class Person
  attr_accessor :first_name, :last_name, :email, :phone, :created_at

  def initialize(first_name, last_name, email, phone, created_at)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
    @created_at = created_at
  end 

end

class WritePeople
  def initialize(file, arr_people)
    @file = file
    @arr_people = arr_people
  end
#creamos archivo CSV
  def creator_csv
    CSV.open(@file,"wb") do |csv|
      @arr_people.each do |subject|
        csv << [subject.first_name, subject.last_name, subject.email, subject.phone, subject.created_at]  
      end
    end
  end
end

def create_people(n)
  arr = []
  n.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    email = Faker::Internet.email
    phone = Faker::PhoneNumber.cell_phone
    created_at = Date.today

    arr << Person.new(first_name,last_name,email,phone,created_at)
  end
arr
end

people = create_people(5)

#creamos instancia para crear el archivo csv

creat_file = WritePeople.new("Ejer1.csv", people)
creat_file.creator_csv

