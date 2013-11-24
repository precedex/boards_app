# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Resource.delete_all

Resource.create!(title: 'Basics of Anesthesia, 6th ed.',
                 authors: "Ronald D. Miller, Manuel C. Pardo, Jr.",
                 description: "everyone and their mother read this book.",
                 image_url: 'baby_miller.jpg',
                 link: "http://www.amazon.com/Basics-Anesthesia-Expert-Consult-Online/dp/1437716148/ref=sr_1_1?ie=UTF8&qid=1385336065&sr=8-1&keywords=basics+of+anesthesia")
                 
Resource.create!(title: 'Morgan & Mikahil\'s Clinical Anesthesiology, 5th ed.',
                 authors: "John F. Butterworth, David C. Mackey, John D. Wasnick",
                 description: "everyone and their sister read this book.",
                 image_url: 'morgan_mikhail.jpg',
                 link: "http://www.amazon.com/Morgan-Mikhails-Clinical-Anesthesiology-Medical/dp/0071627030/ref=sr_1_1?ie=UTF8&qid=1385336644&sr=8-1&keywords=morgan+mikhail")
                
Resource.create!(title: 'Clinical Cases in Anesthesia, 4th ed.',
                 authors: "Allen P. Reed, Francine S. Yudkowitz",
                 description: "everyone and their brother read this book.",
                 image_url: 'clinical_cases.jpg',
                 link: "http://www.amazon.com/Clinical-Cases-Anesthesia-Expert-Consult/dp/1455704121/ref=sr_1_1?ie=UTF8&qid=1385337279&sr=8-1&keywords=clinical+cases+reed")
                 
                             
                 
            