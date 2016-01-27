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
#Metodo para poder modificar la informaciòn
def update_people
    arr =[]
    puts "Do you want change the name? y/n"
    answer = gets.chomp
    if answer == "y" 
      puts "Write the name:"
      name = gets.chomp
    end
    puts "Do you want change the last name? y/n"
    answer2 = gets.chomp
    if answer2 == "y"
      puts "Write the last name:"
      lname = gets.chomp
    end
    puts "Do you want change the email? y/n"
    answer3 = gets.chomp
    if answer3 == "y"
      puts "Write the email:"
      e_mail = gets.chomp
    end
    puts "Do you want change the phone number? y/n"
    answer4 = gets.chomp
    if answer4 == "y"
      puts "Write phone number:"
      phone_number = gets.chomp
    end

    arr << Person.new(name,lname,e_mail,phone_number,Date.today)
  end

class PersonParser

  def initialize(file)
    @file = file
  end
#Metodo para leer la informaciòn, abre el archivo CSV para hacerlos renglon
#y mete la informaciòn en un  arreglo como OBJETOS DE CLASE PERSON
#separandolos uno por uno para crear un solo arrglo de objetos
# pedimos que muestre en pantalla los 10 primeros
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


person1 = Person.new("Armando", "Flores", "ar@gmail.com", "123-3333", Date.today)
person1.first_name = "Carlos"

people1 = update_people
creat_file1 = WritePeople.new("Ejer2.csv", people1)
creat_file1.creator_csv
parser = PersonParser.new('Ejer2.csv')
parser.read
