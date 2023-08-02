# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
student = Student.create(
    f_name: "Srilekha"
    l_name: "Khan"
    email: "srilekhakhan12@gmail.com'"
    phone_no: 7001136575
    bio: "Ingreens Intern"
)

20.times do |i|


    Student.create(
        f_name: "Student #{i+1}",
        l_name: "Student #{i+1}",
        email: "student#{i+1}@gmail.com",
        bio: "Student #{i+1}",

    )

end