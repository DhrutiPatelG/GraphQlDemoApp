# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.f
dept1 = Department.create(department_name: "ROR")
dept1.employees.create(employee_name: "dhruti", employee_email: "abc@gmail.com")
dept1.employees.create(employee_name: "vranda", employee_email: "123@gmail.com")

dept2 = Department.create(department_name: "Python")
dept2.employees.create(employee_name: "laxmi", employee_email: "xyz@gmail.com")
dept2.employees.create(employee_name: "drashti", employee_email: "aaa@gmail.com")
dept2.employees.create(employee_name: "dhruvika", employee_email: "111@gmail.com")