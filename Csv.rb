#Se declaran las librerias 'gemas' a usar
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
# Esta clase recibe como parametros el nombre del archivo a crear y un arreglo (con la información)
class WritePeople
  def initialize(file, arr_people)
    @file = file
    @arr_people = arr_people
  end
# Este metodo crea el archivo CSV
  def creator_csv
    CSV.open(@file,"wb") do |csv|
      @arr_people.each do |subject|
#Como declaramos las variables first_name, last_ name ... etc como de tipo accesor las podemos usar como si
#fueran METODOS esto para que la información en el archivo CSV que ordenada y separada como la queremos
        csv << [subject.first_name, subject.last_name, subject.email, subject.phone, subject.created_at]  
      end
    end
  end
end
# Metodo que recibe como argumento el número de personas que queremos crear
# Regresa un arrglo con la informacion falsa generada de la librería 'faker'
# ---- este metdo esta fuera de cualquier CLASE!!
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

class PersonParser

  def initialize(file)
    @file = file
  end

  def read
    arr = []
    CSV.foreach(@file) do |row|
      arr << Person.new(row[0], row[1], row[2], row[3], row[4])
    end
    p arr[0..9]
  end
end

people = create_people(20)

#creamos instancia para crear el archivo csv

creat_file = WritePeople.new("Ejer1.csv", people)
creat_file.creator_csv
parser = PersonParser.new('Ejer1.csv')
parser.read
