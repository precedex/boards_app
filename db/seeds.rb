Resource.delete_all

Resource.create!(title: 'Basics of Anesthesia, 6th ed. (2011)',
                 authors: "Ronald D. Miller, Manuel C. Pardo, Jr.",
                 description: "My all-time favorite. This was assigned reading during my first month of residency. I consistently used this book for reference and review throughout my training. It is the condensed version of the field's most comprehensive textbook, Miller's Anesthesia, and is affectionately referred to in the community as 'Baby Miller'.",
                 image_url: 'baby_miller.jpg',
                 edition: 6,
                 year: 2011,
                 link: "http://www.amazon.com/Basics-Anesthesia-Expert-Consult-Online/dp/1437716148/ref=sr_1_1?ie=UTF8&qid=1385336065&sr=8-1&keywords=basics+of+anesthesia")
                 
Resource.create!(title: 'Morgan & Mikhail\'s Clinical Anesthesiology, 5th ed. (2013)',
                 authors: "John F. Butterworth, David C. Mackey, John D. Wasnick",
                 description: "everyone and their sister read this book.",
                 image_url: 'morgan_mikhail.jpg',
                 edition: 5,
                 year: 2013,
                 link: "http://www.amazon.com/Morgan-Mikhails-Clinical-Anesthesiology-Medical/dp/0071627030/ref=sr_1_1?ie=UTF8&qid=1385336644&sr=8-1&keywords=morgan+mikhail")
                
Resource.create!(title: 'Clinical Cases in Anesthesia, 4th ed. (2014)',
                 authors: "Allen P. Reed, Francine S. Yudkowitz",
                 description: "everyone and their brother read this book.",
                 image_url: 'clinical_cases.jpg',
                 edition: 4,
                 year: 2014,
                 link: "http://www.amazon.com/Clinical-Cases-Anesthesia-Expert-Consult/dp/1455704121/ref=sr_1_1?ie=UTF8&qid=1385337279&sr=8-1&keywords=clinical+cases+reed")
                 
text = ''
File.open(File.join(Rails.root, 'db', '1990_A.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1990_B.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1991_A.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1991_B.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1992_A.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1992_B.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1993_A.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1993_B.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1994_A.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1994_B.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1995_A.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1995_B.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1996_A.txt')).each {|line| text << line}
File.open(File.join(Rails.root, 'db', '1996_B.txt')).each {|line| text << line}

ALL_QUESTIONS = text

answer_key_1990A = %w{
a e a e a b a b c c b c c c c d c a a e d c c b e e c a c c a 
c d c a e b e c c a b a c e e e e e a e d e c e d b a c b b b 
d a c b e a e c a d a a b a e c c d a b b c b c e c d d b d b 
a e d e b d a b c e d b c d d}

answer_key_1990B = %w{
c a d c a e b c d a a b b a c b b e c d b c e a b a b c d a d a
e a e d b e c c a c e d d b d b d d d b c c c a e d e c d a a b 
d b e b b a c a a c c a b d d d a b c d e a a c e e b e e a e d 
d c b b a a e c e e b e}

answer_key_1991A = %w{
a d c a e e d a d b b d e e a a a e a c e c d a e b b c c a c e 
c e b c d d b b d d e d e c c e b c e c c d e a c b e e e b d e 
a a e d b a c d b e b d d a c d b e c c b b b b d b e e a e b b 
c d d a b e d b c d e c}

answer_key_1991B = %w{
b b c a c a d c e d e d b b e e c e c e d e a b b c d c a c e e 
e a c d d a c c d c a e c e c b a b a b d e d b d e d b c c c c 
e b a a c d e e e c e a b c c a d a e b e e a a d e d a b d d b 
d d a a a a e d b b d a e d}

answer_key_1992A = %w{
a d d e b b d c d e b c d a e b a e e e c c c a c a a a e c c a 
c c c a a a b b b c c b c d a a c e b b a b e c b e c a a d a d 
a b d e c b e d a e e e a b e e b e d d b c e c e d e e d b d d 
d a e e d e b e c e b a a c e e}

answer_key_1992B = %w{
e c d c e e a c b a a c b c a a c b a c c a b b e b c a e a b d 
d e d d a c d c a b d d d a e a a b a a a e b b e e e b d b e d 
d c b c e c a e a c b d e c d a c c b b e a d e b e b c e a b b 
b a c e a a d c d a b a d c e d a}

answer_key_1993A = %w{ 
b b a b e e d c a d c c a b d c d c d e c d d e d e b c e b d c 
e d c a e c b e d a d b c b c e c a b b b d a c e a e a b a d c 
e b c b a e d a e d c a a b a b d d e a a a b c e a b d b a c a 
e b}

answer_key_1993B = %w{
d d c c a d a e d e a b a a d b b b b e b a b e a d b c d d c c 
c a a c d d d e a d a c b b b a c b a e e d c d b a e d d a c b 
a b d d b a b e a b c a b b d d e d d b d b b e e e b e b e}

answer_key_1994A = %w{
a e b e d c a d c a d a a e a d b c b e d d b b b e c e c e a c 
e a d c d b e e c a d a a c d d e d b c b b c a e a b c b d b d 
a a d d e d b c d b d c d d b a c e e d d b a e c c c e e b c a 
b c a b d b e a b c c a}

answer_key_1994B = %w{
d e d e d a c a d d a e b e d c b b d b c c c a e b c c c b a c 
a a e c b b b a c e d d a d a d c a e b b d d d e b d e d a b c 
c a e b c b b c e c b c e b b b e a b c c b d e b a a d e d d d 
a d a d b b d b c c a c c}

answer_key_1995A = %w{
b e e c e e d d e a a d d c e e a a e e b a e d d a c b b c c e 
d e a c b b e e e d e c c e d b b a c d d d a e b a a d c a e b 
c b b e d c c c b b c c a c a c a d d d b c d e a e b e e b e c
d a d a b d a b d d}

answer_key_1995B = %w{
a b a b e e e d c d a c e c b c e c d b c b d b d d b b d e a d 
b e a a d b e a e a c c d d c d b b d d e b a b b c e e c d a a 
c c c d e c b b c b d d e b d c a d b a a a d e a a b c d d d a 
c b b a b c e b d c e a}   

answer_key_1996A = %w{
d c e d e e d c b c b a d a c c e c a e c b a c d a c c e b e a 
b b b b e c b c b b e e d c a e d e b a a b b a a c a b a a e e
e a b b a d e d b a e b c e d a d d e a a d d d e d d c c e e a 
c a c b d a b d a a d b}

answer_key_1996B = %w{
b e e c c b b c a c d b c d d e c b b d e c e a d b a e c b e e 
a c a d c a a b b b a c b c e c d d d e c a d e b d a b e a a d 
b b c b d d e a b d d b e c d e b e e d a b c c b a c d b b b d 
a e d a a b c a e e}  

ANSWER_KEY = 
answer_key_1990A + answer_key_1990B + 
answer_key_1991A + answer_key_1991B + 
answer_key_1992A + answer_key_1992B + 
answer_key_1993A + answer_key_1993B + 
answer_key_1994A + answer_key_1994B + 
answer_key_1995A + answer_key_1995B + 
answer_key_1996A + answer_key_1996B

full_questions = ALL_QUESTIONS.split(/\n\n/)
number_of_questions = full_questions.length
stemfinder = []
full_questions.each {|full_question| stemfinder << full_question.split(/\n/)}
stems = stemfinder.map {|i| i.delete_at(0)}  
option_a = stemfinder.map {|i| i.delete_at(0)}
option_b = stemfinder.map {|i| i.delete_at(0)}
option_c = stemfinder.map {|i| i.delete_at(0)}
option_d = stemfinder.map {|i| i.delete_at(0)}
option_e = stemfinder.map {|i| i[0]}

Question.delete_all
0.upto(number_of_questions-1).each do |i|
Question.create!(stem: stems[i],
                 option_a: option_a[i],
                 option_b: option_b[i],
                 option_c: option_c[i],
                 option_d: option_d[i],
                 option_e: option_e[i],
                 answer: ANSWER_KEY[i])
               end                            
                 
            