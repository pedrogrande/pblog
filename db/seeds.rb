# Adding a default admin user
if User.count < 1
  user = User.create(email: 'admin@example.com', password: '12345678')
  puts "User added with email: admin@example.com and password: 12345678"
  user.add_role :admin
  puts "User given role of admin"
  # add default settings

  first_article = Article.create!(title: 'First article', lead: 'This is the first article of your new blog', content: 'Waistcoat PBR&B semiotics, 3 wolf moon mumblecore direct trade brunch occupy snackwave. Pour-over ugh unicorn vexillologist, mumblecore sartorial hella hot chicken. Thundercats pour-over la croix art party, humblebrag subway tile small batch four dollar toast affogato 8-bit knausgaard coloring book plaid church-key. Yuccie readymade listicle hexagon kitsch skateboard. Fam activated charcoal slow-carb freegan jianbing. Trust fund fap messenger bag four dollar toast viral, marfa synth art party pitchfork jean shorts normcore microdosing hashtag. Helvetica kinfolk whatever YOLO plaid.

  Post-ironic four dollar toast crucifix readymade fanny pack, kogi sriracha lyft scenester bitters chambray raw denim. IPhone pickled artisan, heirloom leggings austin ugh XOXO kombucha. Bespoke austin knausgaard waistcoat pabst. Normcore vegan intelligentsia, echo park taxidermy gochujang ramps PBR&B messenger bag direct trade cred cold-pressed woke ethical brunch. VHS live-edge vinyl, fanny pack fam shabby chic normcore butcher seitan scenester cred. Raw denim single-origin coffee normcore post-ironic, street art farm-to-table woke semiotics hoodie leggings polaroid brooklyn tattooed banh mi. Raw denim hot chicken austin shabby chic banjo, coloring book yuccie tilde church-key pinterest.')
end
# Setting.destroy_all
user = User.first
default_settings = Setting.create(
  blog_title: 'Blog title',
  subtitle: 'Blog subtitle',
  about_lead: 'Lorem ipsum',
  tags: true,
  archives: true,
  contact_email: user.email,
  github: 'https://github.com/pedrogrande',
  twitter: 'https://www.twitter.com/pedrogrande',
  author_name: 'Joe Bloggs',
  instagram: 'pedrogrande',
  navbar_color: '#428BCA',
  header_background_color: '#ddd',
  header_background_image: 'http://res.cloudinary.com/cfrebooted/image/upload/v1500354228/kgjrge9e7oct2ildggdh.jpg',
  header_font: 'Roboto',
  text_font: 'Roboto Slab',
  share_links_top: false,
  share_links_bottom: true,
  header_color: '#222',
  text_color: '#222',
  header_font_weight: 400
)
puts "Default settings added"
