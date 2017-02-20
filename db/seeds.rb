User.destroy_all
Post.destroy_all

u1 = User.create!(email: "alex@alex.com", password: "password", password_confirmation: "password", first_name: "Alex", last_name: "Chin")

u1.posts.create!(text: "I wonder what this amazing piece of prose will score in Watson's fantastic engine...")
u1.posts.create!(text: "Tumeric activated charcoal literally direct trade cliche selfies. Salvia heirloom iPhone tattooed, 90's biodiesel deep v put a bird on it try-hard schlitz dreamcatcher selvage chambray. ")
u1.posts.create!(text: "Skateboard keytar intelligentsia, meggings brunch hoodie post-ironic fingerstache raw denim portland small batch thundercats. Pug vexillologist subway tile microdosing.")
u1.posts.create!(text: "Next level post-ironic kitsch, gastropub hammock narwhal tumblr. Drinking vinegar selfies art party, vape everyday carry bushwick whatever meh mlkshk yr actually hexagon.")
u1.posts.create!(text: "This is amazing!!!!")
