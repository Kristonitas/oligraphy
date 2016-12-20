# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


a1 = Article.create(title: 'Redakcijos žodis', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet neque quis nulla porta elementum. Phasellus ultrices porta dolor, vitae sollicitudin quam luctus nec. Fusce non sem urna. Phasellus felis ante, mollis ut viverra at, egestas et arcu. Sed luctus at metus quis mollis. Nam venenatis blandit turpis, vitae fermentum mauris varius sit amet. Nullam sit amet felis at augue semper pulvinar quis non libero. Pellentesque non scelerisque mauris. Cras mollis commodo erat, quis pulvinar quam.

  Curabitur non urna vitae orci consectetur tincidunt et sollicitudin enim. Ut id lorem mi. Sed hendrerit orci at consectetur mollis. Curabitur lacus est, rutrum in consequat eu, volutpat at mi. In volutpat dolor lacus, at placerat sem volutpat in. Phasellus auctor nibh eu nibh finibus, vel ultrices sem condimentum. Pellentesque viverra vestibulum nunc at bibendum. Etiam a mauris sed ligula semper facilisis et vel eros. Ut at enim ornare velit sollicitudin aliquet ac blandit elit.')

a2 = Article.create(title: 'Kalėdiniai linkėjimai', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet neque quis nulla porta elementum. Phasellus ultrices porta dolor, vitae sollicitudin quam luctus nec. Fusce non sem urna. Phasellus felis ante, mollis ut viverra at, egestas et arcu. Sed luctus at metus quis mollis. Nam venenatis blandit turpis, vitae fermentum mauris varius sit amet. Nullam sit amet felis at augue semper pulvinar quis non libero. Pellentesque non scelerisque mauris. Cras mollis commodo erat, quis pulvinar quam.

  Curabitur non urna vitae orci consectetur tincidunt et sollicitudin enim. Ut id lorem mi. Sed hendrerit orci at consectetur mollis. Curabitur lacus est, rutrum in consequat eu, volutpat at mi. In volutpat dolor lacus, at placerat sem volutpat in. Phasellus auctor nibh eu nibh finibus, vel ultrices sem condimentum. Pellentesque viverra vestibulum nunc at bibendum. Etiam a mauris sed ligula semper facilisis et vel eros. Ut at enim ornare velit sollicitudin aliquet ac blandit elit.')

i1 = Issue.create(title: 'Pirmas blynas')

i1.articles << a1
i1.articles << a2


a3 = Article.create(title: 'Redakcijos žodis', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet neque quis nulla porta elementum. Phasellus ultrices porta dolor, vitae sollicitudin quam luctus nec. Fusce non sem urna. Phasellus felis ante, mollis ut viverra at, egestas et arcu. Sed luctus at metus quis mollis. Nam venenatis blandit turpis, vitae fermentum mauris varius sit amet. Nullam sit amet felis at augue semper pulvinar quis non libero. Pellentesque non scelerisque mauris. Cras mollis commodo erat, quis pulvinar quam.

  Curabitur non urna vitae orci consectetur tincidunt et sollicitudin enim. Ut id lorem mi. Sed hendrerit orci at consectetur mollis. Curabitur lacus est, rutrum in consequat eu, volutpat at mi. In volutpat dolor lacus, at placerat sem volutpat in. Phasellus auctor nibh eu nibh finibus, vel ultrices sem condimentum. Pellentesque viverra vestibulum nunc at bibendum. Etiam a mauris sed ligula semper facilisis et vel eros. Ut at enim ornare velit sollicitudin aliquet ac blandit elit.')

a4 = Article.create(title: 'Kalėdiniai linkėjimai', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet neque quis nulla porta elementum. Phasellus ultrices porta dolor, vitae sollicitudin quam luctus nec. Fusce non sem urna. Phasellus felis ante, mollis ut viverra at, egestas et arcu. Sed luctus at metus quis mollis. Nam venenatis blandit turpis, vitae fermentum mauris varius sit amet. Nullam sit amet felis at augue semper pulvinar quis non libero. Pellentesque non scelerisque mauris. Cras mollis commodo erat, quis pulvinar quam.

  Curabitur non urna vitae orci consectetur tincidunt et sollicitudin enim. Ut id lorem mi. Sed hendrerit orci at consectetur mollis. Curabitur lacus est, rutrum in consequat eu, volutpat at mi. In volutpat dolor lacus, at placerat sem volutpat in. Phasellus auctor nibh eu nibh finibus, vel ultrices sem condimentum. Pellentesque viverra vestibulum nunc at bibendum. Etiam a mauris sed ligula semper facilisis et vel eros. Ut at enim ornare velit sollicitudin aliquet ac blandit elit.')

i2 = Issue.create(title: 'Antras vaikas')

i2.articles << a3
i2.articles << a4

a5 = Article.create(title: 'Redakcijos žodis', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet neque quis nulla porta elementum. Phasellus ultrices porta dolor, vitae sollicitudin quam luctus nec. Fusce non sem urna. Phasellus felis ante, mollis ut viverra at, egestas et arcu. Sed luctus at metus quis mollis. Nam venenatis blandit turpis, vitae fermentum mauris varius sit amet. Nullam sit amet felis at augue semper pulvinar quis non libero. Pellentesque non scelerisque mauris. Cras mollis commodo erat, quis pulvinar quam.

  Curabitur non urna vitae orci consectetur tincidunt et sollicitudin enim. Ut id lorem mi. Sed hendrerit orci at consectetur mollis. Curabitur lacus est, rutrum in consequat eu, volutpat at mi. In volutpat dolor lacus, at placerat sem volutpat in. Phasellus auctor nibh eu nibh finibus, vel ultrices sem condimentum. Pellentesque viverra vestibulum nunc at bibendum. Etiam a mauris sed ligula semper facilisis et vel eros. Ut at enim ornare velit sollicitudin aliquet ac blandit elit.')

a6 = Article.create(title: 'Kalėdiniai linkėjimai', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet neque quis nulla porta elementum. Phasellus ultrices porta dolor, vitae sollicitudin quam luctus nec. Fusce non sem urna. Phasellus felis ante, mollis ut viverra at, egestas et arcu. Sed luctus at metus quis mollis. Nam venenatis blandit turpis, vitae fermentum mauris varius sit amet. Nullam sit amet felis at augue semper pulvinar quis non libero. Pellentesque non scelerisque mauris. Cras mollis commodo erat, quis pulvinar quam.

  Curabitur non urna vitae orci consectetur tincidunt et sollicitudin enim. Ut id lorem mi. Sed hendrerit orci at consectetur mollis. Curabitur lacus est, rutrum in consequat eu, volutpat at mi. In volutpat dolor lacus, at placerat sem volutpat in. Phasellus auctor nibh eu nibh finibus, vel ultrices sem condimentum. Pellentesque viverra vestibulum nunc at bibendum. Etiam a mauris sed ligula semper facilisis et vel eros. Ut at enim ornare velit sollicitudin aliquet ac blandit elit.')

i3 = Issue.create(title: 'Trečias Paršiukas')

i3.articles << a5
i3.articles << a6

m1 = Magazine.create(title: "Laikraštukas", style: "body{background-color: black;}")

m1.issues << i1
m1.issues << i2
m1.issues << i3