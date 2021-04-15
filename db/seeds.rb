user1 = User.create(name: 'jaim')
user2 = User.create(name: 'raul')
user3 = User.create(name: 'joseph')

Article.create(author_id: user1.id, title: 'Ocopa', text: 'Huacatay sauce with potato', image: 'https://cde.peru.com//ima/0/1/9/5/3/1953207/924x530/ocopa.jpg', all_categories: 'peruvian, entree')

Article.create(author_id: user1.id, title: 'Caccio e pepe', text: 'Classic pasta with peccorino cheese and pepper', image: 'https://okdiario.com/img/recetas/2017/10/21/espaguetis-cacio-e-pepe..jpg', all_categories: 'italian, pasta, main')

Article.create(author_id: user1.id, title: 'Ceviche', text: 'Cold dish based on fresh fish cooked in lemon with sweet potato.', image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Cebiche_de_corvina.JPG/1200px-Cebiche_de_corvina.jpg', all_categories: 'entree, peruvian, seafood')

Article.create(author_id: user1.id, title: 'Causa limeña', text: 'Mashed potato stuffed with crab meat and mayo.', image: 'https://t2.rg.ltmcdn.com/es/images/8/6/2/causa_limena_31268_600.jpg', all_categories: 'entree, peruvian, seafood')

Article.create(author_id: user1.id, title: 'shoyu ramen', text: 'Traditional soup from Japan made with a dense broth and full of umami.', image: 'https://www.hola.com/imagenes/cocina/recetas/20191017151958/ramen-pollo-huevo-cebollino-soja/0-734-730/ramen-adobe-m.jpg', all_categories: 'japanese, soup, asian')

Vote.create(user_id: user1.id, article_id: 1)
Vote.create(user_id: user2.id, article_id: 2)
Vote.create(user_id: user2.id, article_id: 3)
Vote.create(user_id: user3.id, article_id: 4)
Vote.create(user_id: user3.id, article_id: 5)
