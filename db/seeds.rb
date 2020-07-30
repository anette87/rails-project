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
newgirl = Product.create(name:"New Girl",category: tvshow)
schittscreek = Product.create(name:"Schitt's Creek",category: tvshow)

#Heroes
dccomics = Product.create(name:"DC Comics",category: heroes)
marvel = Product.create(name:"Marvel",category: heroes)
avengers = Product.create(name:"Avengers",category: heroes)
starwars = Product.create(name:"Star Wars",category: heroes)
harrypotter = Product.create(name:"Harry Potter",category: heroes)

#Disney
villains = Product.create(name:"Villains",category: disney)
princesses = Product.create(name:"Princesses",category: disney)
toystory = Product.create(name:"Toy Story",category: disney)
mickeyandminnie = Product.create(name:"Mickey and Minnie Mouse",category: disney)
classics = Product.create(name:"Classics",category: disney)

#Music
bsb = Product.create(name:"Backstreet Boys",category: music)
nsync = Product.create(name:"NSYNC",category: music)
metallica = Product.create(name:"Metallica",category: music)
kiss = Product.create(name:"Kiss",category: music)
soloartists = Product.create(name:"Solo Artists",category: music)

#Figures

#TVShows - The Office
michael = Figure.create(name:"Michael Scott",product: theoffice)
jim = Figure.create(name:"Jim Halpert",product: theoffice)
pam = Figure.create(name:"Pam Beesly",product: theoffice)
dwight = Figure.create(name:"Dwight Schrute",product: theoffice)
kelly = Figure.create(name:"Kelly Kapoor",product: theoffice)

#TVShows - Parks and Recs
leslie = Figure.create(name:"Leslie Knope",product: parksandrecs)
ron = Figure.create(name:"Ron Swanson",product: parksandrecs)
andy = Figure.create(name:"Andy Dwyer",product: parksandrecs)
littleseb = Figure.create(name:"Little Sebastian",product: parksandrecs)
April = Figure.create(name:"April Ludgate",product: parksandrecs)

#TVShows - Friends
ross = Figure.create(name:"Ross Geller",product: friends)
monica = Figure.create(name:"Monica Geller",product: friends)
chandler = Figure.create(name:"Chandler Bing",product: friends)
joey = Figure.create(name:"Joey Tribbiani ",product: friends)
rachel = Figure.create(name:"Rachel Green",product: friends)
phoebe = Figure.create(name:"Phoebe Buffay ",product: friends)

user = User.create(username:"Ana", email:"ana@gmail.com", password_digest:"1234")
UserFigure.create(user: user,figure: michael)
Comment.create(comment:"Hello",user: user,figure: michael)












    







