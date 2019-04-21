# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
user1 = User.create :email => 'test@email.com', :username => 'Zippo', :password => 'chicken', :admin => true

Node.destroy_all
node1 = Node.create :name => 'root'
node2 = node1.children.create :name =>'1lv1'
node3 = node1.children.create :name =>'2lv1'

node4 = node2.children.create :name => '1lv2'
node2.children.create :name => '2lv2'

Tag.destroy_all
tag1 = Tag.create :name => 'FirstTage'
tag2 = Tag.create :name => 'Other'

Glossary.destroy_all
gloss1 = Glossary.create :title => 'A Page'
gloss2 = Glossary.create :title => 'Another Page'

TextBlock.destroy_all
tblock1 = TextBlock.create :header => 'Stuff', :info => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
tblock2 = TextBlock.create :header => 'More', :info => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

ImageBlock.destroy_all
iblock1 = ImageBlock.create :image => 'https://picsum.photos/700/900', :subhead => 'Pic1'
iblock2 = ImageBlock.create :image => 'https://picsum.photos/500/500', :subhead => 'Pic2'
iblock3 = ImageBlock.create :image => 'https://picsum.photos/300/100', :subhead => 'Pic3'

user1.nodes << node1
user1.tags << tag1
user1.tags << tag2

node3.glossaries << gloss1
node4.glossaries << gloss2

gloss1.image_blocks << iblock1
gloss1.image_blocks << iblock2
gloss1.text_blocks << tblock1

gloss2.text_blocks << tblock2
gloss2.image_blocks << iblock3
