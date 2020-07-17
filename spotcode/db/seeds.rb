# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tmp_dir = Rails.root.join("tmp")

rock = Category.create(name: "Rock")
rock.image.attach(io: File.open("#{tmp_dir}/seed_files/rock.png"), filename: "rock.png")

blues = Category.create(name: "Blues")
blues.image.attach(io: File.open("#{tmp_dir}/seed_files/blues.png"), filename: "blues.png")

jazz = Category.create(name: "Jazz")
jazz.image.attach(io: File.open("#{tmp_dir}/seed_files/jazz.png"), filename: "jazz.png")

# SINGERS

andrew_howes = Artist.create(name: "Andrew Howes")
andrew_howes.photo.attach(io: File.open("#{tmp_dir}/seed_files/andrew_howes.jpg"), filename: "andrew_howes.jpg")
yellow_chair = Artist.create(name: "Yellow Chair")
yellow_chair.photo.attach(io: File.open("#{tmp_dir}/seed_files/yellow_chair.jpg"), filename: "yellow_chair.jpg")

# ALBUMS

gubernator = andrew_howes.albums.create(name: "Gubernator", category: rock)
gubernator.cover.attach(io: File.open("#{tmp_dir}/seed_files/gubernator.jpg"), filename: "gubernator.jpg")

barcelona = yellow_chair.albums.create(name: "Nilsona", category: rock)
barcelona.cover.attach(io: File.open("#{tmp_dir}/seed_files/gubernator.jpg"), filename: "gubernator.jpg")

#SONGS

##yellow_chair/barcelona

# songuinho = Song.create(title: "asda", album: barcelona)
# songuinho.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/itaca.mp3"), filename: "itaca.mp3")

# # songao = Song.create(title: "Nelson", album: barcelona)

via_laietana = barcelona.songs.create(title: "Via Laietana", played_count: Random.rand(1000))
via_laietana.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/via_laietana.mp3"), filename: "via_laietana.mp3")
##yellow_chair/barcelona
itaca = barcelona.songs.create(title: "Itaca", played_count: Random.rand(1000))
itaca.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/itaca.mp3"), filename: "itaca.mp3")
##andrew_howes/gubernator
crimea = barcelona.songs.create(title: "Crimea", played_count: Random.rand(1000))
crimea.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/crimea.mp3"), filename: "crimea.mp3")
##andrew_howes/gubernator
helmsman = barcelona.songs.create(title: "Helmsman", played_count: Random.rand(1000))
helmsman.file.attach(io: File.open("#{tmp_dir}/seed_files/musics/helmsman.mp3"), filename: "helmsman.mp3")

#USERS

guikao = User.create(name: "Guikao", email: "guiminervino@gmail.com", password: "12345678")
guikao.recently_heards.create(album: barcelona)
dieguin = User.create(name: "Dieguin", email: "dieguin@gmail.com", password: "12345678")
dieguin.recently_heards.create(album: gubernator)
michael_jackson = User.create(name: "michael_jackson", email: "michael_jackson@gmail.com", password: "12345678")
michael_jackson.recently_heards.create(album: gubernator)
