#Category
tvshow = Category.create(name:"TV Shows")
heroes = Category.create(name: "Heroes")
disney = Category.create(name: "Disney")
music = Category.create(name: "Music")

#Products

#TV Shows
theoffice = Product.create(name:"The Office",category: tvshow)
parksandrecs = Product.create(name:"Parks and Recs",category: tvshow)
friends = Product.create(name:"Friends",category: tvshow)
schittscreek = Product.create(name:"Schitt's Creek",category: tvshow)

#Heroes
dccomics = Product.create(name:"DC Comics",category: heroes)
marvel = Product.create(name:"Marvel",category: heroes)

#Disney

princesses = Product.create(name:"Princesses",category: disney)
toystory = Product.create(name:"Toy Story",category: disney)
mickeyanco = Product.create(name:"Mickey and Co.",category: disney)


#Music
bsb = Product.create(name:"Backstreet Boys",category: music)
soloartists = Product.create(name:"Solo Artists",category: music)

#Figures

#TVShows - The Office
michael = Figure.create(name:"Michael Scott",product: theoffice, image_name: "michael.jpg")
jim = Figure.create(name:"Jim Halpert",product: theoffice, image_name:"jim.jpg")
pam = Figure.create(name:"Pam Beesly",product: theoffice, image_name:"pam.jpg")
dwight = Figure.create(name:"Dwight Schrute",product: theoffice, image_name:"dwight.jpg")
kelly = Figure.create(name:"Kelly Kapoor",product: theoffice, image_name:"kelly.jpg")

#TVShows - Parks and Recs
leslie = Figure.create(name:"Leslie Knope",product: parksandrecs ,image_name: "leslie.jpg")
ron = Figure.create(name:"Ron Swanson",product: parksandrecs ,image_name: "ron.jpg")
andy = Figure.create(name:"Andy Dwyer",product: parksandrecs ,image_name: "andy.jpeg")
littleseb = Figure.create(name:"Little Sebastian",product: parksandrecs ,image_name: "lil_sebastian.jpg")
April = Figure.create(name:"April Ludgate",product: parksandrecs ,image_name:"april.jpg")

#TVShows - Friends
ross = Figure.create(name:"Ross Geller",product: friends ,image_name: "ross.jpg")
monica = Figure.create(name:"Monica Geller",product: friends ,image_name:"monica.jpg")
chandler = Figure.create(name:"Chandler Bing",product: friends ,image_name: "chandler.jpg")
joey = Figure.create(name:"Joey Tribbiani ",product: friends ,image_name: "joey.jpg")
rachel = Figure.create(name:"Rachel Green",product: friends ,image_name:"rachel.jpg")
phoebe = Figure.create(name:"Phoebe Buffay ",product: friends ,image_name:"phoebe.jpeg")

#TVShows - Schitt's Creek
alexis = Figure.create(name:"Alexis Rose",product: schittscreek ,image_name: "alexis.jpg")
david = Figure.create(name:"David Rose",product: schittscreek ,image_name:"david.jpg")
johnny = Figure.create(name:"Johnny Rose",product: schittscreek ,image_name: "johnny.jpg")
moira = Figure.create(name:"Moira Rose",product: schittscreek ,image_name: "moira.jpg")

#Heroes - Marvel
ironman = Figure.create(name:"Iron Man",product: marvel ,image_name: "ironman.jpg")
captainamerica = Figure.create(name:"Captain America",product: marvel ,image_name:"capamerica.jpg")
hulk = Figure.create(name:"Hulk",product: marvel ,image_name: "hulk.jpeg")
thor = Figure.create(name:"Thor",product: marvel ,image_name: "thor.jpg")
spiderman = Figure.create(name:"Spider Man",product: marvel ,image_name: "spiderman.png")
rocketandgroot = Figure.create(name:"Rocket and Groot",product: marvel ,image_name: "rocketandgroot.jpg")

#Heroes - DC 
aquaman = Figure.create(name:"Aquaman",product: dccomics ,image_name: "aguaman.jpg")
batman = Figure.create(name:"Batman",product: dccomics ,image_name:"batman.jpg")
flash = Figure.create(name:"Flash",product: dccomics ,image_name: "flash.jpg")
robin = Figure.create(name:"Robin",product: dccomics ,image_name: "robin.jpg")
ww = Figure.create(name:"Wonder Woman",product: dccomics ,image_name: "ww.jpg")

#Disney - Princesses
ariel = Figure.create(name:"Ariel",product: princesses ,image_name: "ariel.jpg")
belle = Figure.create(name:"Belle",product: princesses ,image_name:"belle.jpg")
cinderella = Figure.create(name:"Cinderella",product: princesses ,image_name: "cinderella.jpg")
snowwhite = Figure.create(name:"Snow White",product: princesses ,image_name: "snowwhite.jpg")
tiana = Figure.create(name:"Tiana",product: princesses ,image_name: "tiana.jpg")

#Disney - Princesses
ariel = Figure.create(name:"Ariel",product: princesses ,image_name: "ariel.jpg")
belle = Figure.create(name:"Belle",product: princesses ,image_name:"belle.jpg")
cinderella = Figure.create(name:"Cinderella",product: princesses ,image_name: "cinderella.jpg")
snowwhite = Figure.create(name:"Snow White",product: princesses ,image_name: "snowwhite.jpg")
tiana = Figure.create(name:"Tiana",product: princesses ,image_name: "tiana.jpg")

#Disney - Toy Story
bopeep = Figure.create(name:"Bo Peep",product:toystory ,image_name: "bopeep.jpg")
alien = Figure.create(name:"Alien",product:toystory ,image_name:"alien.jpg")
buzz = Figure.create(name:"Buzz Lightyear",product:toystory ,image_name: "Buzz_.jpg")
Jessy = Figure.create(name:"Jessy",product:toystory ,image_name: "jessy.jpg")
Woody = Figure.create(name:"Woody",product:toystory ,image_name: "woody.jpg")

#Disney - Mickey and Co. 
donald = Figure.create(name:"Donald Duck",product:mickeyanco ,image_name: "donald.jpg")
goofy = Figure.create(name:"Goofy",product:mickeyanco ,image_name:"goofy.jpg")
minnie = Figure.create(name:"Minnie Mouse",product:mickeyanco ,image_name: "minnie.jpg")
mickey = Figure.create(name:"Mickey Mouse",product:mickeyanco ,image_name: "mickey.jpg")
sorcerer = Figure.create(name:"Sorcerer Mickey",product:mickeyanco ,image_name: "sorcerermickey.jpg")

#Music - BSB
aj= Figure.create(name:"AJ McLean",product:bsb ,image_name: "aj.jpg")
brian = Figure.create(name:"Brian Littrell",product:bsb ,image_name:"brian.jpg")
howie = Figure.create(name:"Howie D.",product:bsb ,image_name: "howie.jpg")
kevin = Figure.create(name:"Kevin Richardson",product:bsb ,image_name: "kevin.jpg")
nick = Figure.create(name:"Nick Carter",product:bsb ,image_name: "nick.jpg")

#Music - Solo artists
amy= Figure.create(name:"Amy Winehouse",product:soloartists ,image_name: "amywinehouse.jpg")
britney = Figure.create(name:"Britney Spears",product:soloartists ,image_name:"britneyspears.jpg")
ed = Figure.create(name:"Ed Sherran",product:soloartists ,image_name: "edsherran.jpg")
jimmy = Figure.create(name:"Jimmy Hendrix",product:soloartists ,image_name: "jimmyhendrix.jpg")
kurt = Figure.create(name:"Kurt Cobain",product:soloartists ,image_name: "kurtcobain.jpg")


user = User.create(username:"Ana", email:"ana@gmail.com", password:"1234")
UserFigure.create(user: user,figure: michael)
Comment.create(comment:"The office is my favorite show. This is great!",user: user,figure: michael)












    







