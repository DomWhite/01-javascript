require_relative 'config'
require_relative 'student'

Student.delete_all # everytime I run seed delete all records

Student.create name: 'dom', fav_number: 6
Student.create name: 'jc', fav_number: 7
Student.create name: 'beta', fav_number: 42