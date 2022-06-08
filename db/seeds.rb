puts 'creando libros...'

User.destroy_all
User.create!(
    [
        
          { email: 'user1@gmail.com', password: 123456 },
          { email: 'user2@gmail.com', password: 123456 }
    ]
)
Book.destroy_all

Book.create!(
    [
        {
            title: "El Código Da Vinci", 
            author: "Dan Brown", 
            description: "Al combinar los géneros de suspenso detectivesco y esoterismo Nueva Era, con una teoría de conspiración relativa al Santo Grial y al papel de María Magdalena en el cristianismo, la novela espoleó el difundido interés por ciertas teorías de complots.", 
            image_url: "https://acortar.link/dfWt9F", 
            publication_date: "18-03-2003", 
            price: 9000,
            user: User.find_by(email: 'user1@gmail.com')
        },
        {
            title: "El Principito", 
            author: "Antoine de Saint-Exupéry", 
            description: "El principito, un relato considerado como un libro infantil por la forma en la que está escrito, pero que es en realidad una crítica de la adultez en el que se tratan temas profundos como el sentido de la vida, la soledad, la amistad, el amor y la pérdida.", 
            image_url: "https://acortar.link/UeSp0f", 
            publication_date: "06-04-1943", 
            price: 13000,
            user: User.find_by(email: 'user1@gmail.com')
        },
        {
            title: "Don Quijote de la Mancha", 
            author: "Miguel de Cervantes", 
            description: "Es la primera obra genuinamente desmitificadora de la tradición caballeresca y cortés por su tratamiento burlesco. Representa la primera novela moderna y la primera novela polifónica; como tal, ejerció un enorme influjo en toda la narrativa europea. Por considerarse «el mejor trabajo literario jamás escrito», encabezó la lista de las mejores obras literarias de la historia.", 
            image_url: "https://acortar.link/KUj3g5", 
            publication_date: "01-01-1605", 
            price: 21000,
            user: User.find_by(email: 'user2@gmail.com')
        },
        {    
            title: "Historia de dos ciudades", 
            author: "Charles Dickens", 
            description: "En esta novela histórica se narra la vida en el siglo XVIII, en la época de la Revolución francesa.", 
            image_url: "https://acortar.link/nE40hH", 
            publication_date: "01-11-1859", 
            price: 15000,
            user: User.find_by(email: 'user1@gmail.com')
        },
        {
            title: "El Señor de los Anillos", 
            author: "J. R. R. Tolkien", 
            description: "Su historia se desarrolla en la Tercera Edad del Sol de la Tierra Media, un lugar ficticio poblado por hombres y otras razas antropomorfas como los hobbits, los elfos o los enanos, así como por muchas otras criaturas reales y fantásticas..", 
            image_url: "https://acortar.link/hQFoSM	", 
            publication_date: "29-07-1954", 
            price: 25800,
            user: User.find_by(email: 'user2@gmail.com')
        },
        {

            title: "Sueño en el Pabellón Rojo", 
            author: "Cao Xueqin", 
            description: "Sueño en el pabellón rojo se cree que es una obra semi-autobiográfica, reflejando el auge y decadencia de la propia familia de Cao Xueqin y por extensión, de la dinastía Qing.", 
            image_url: "https://acortar.link/FrsREh", 
            publication_date: "", 
            price: 31500,
            user: User.find_by(email: 'user2@gmail.com')
        },
        {
            title: "Las Aventuras de Alicia en el País de las Maravillas", 
            author: "Lewis Carroll", 
            description: "La historia cuenta cómo una niña llamada Alicia cae por un agujero, encontrándose en un mundo peculiar, poblado por humanos y criaturas antropomórficas. El libro juega con la lógica, dando a la novela gran popularidad tanto en niños como en adultos.", 
            image_url: "https://acortar.link/01fI1l", 
            publication_date: "26-11-1865", 
            price: 26800,
            user: User.find_by(email: 'user1@gmail.com')
        },
        {
            title: "El León, la Bruja y el Armario", 
            author: "C. S. Lewis", 
            description: "La trama transcurre durante la Segunda Guerra Mundial. Para protegerlos de los bombardeos, cuatro hermanos: Peter, Susan, Edmund y Lucy Pevensie son llevados a la casa rural del profesor Digory Kirke. Tras su llegada a la casa, los hermanos deciden explorar la enorme y prometedora vivienda en busca de algo interesante, para así poder satisfacer su curiosidad infantil.", 
            image_url: "https://acortar.link/VKkaBW", 
            publication_date: "16-10-1950", 
            price: 6500,
            user: User.find_by(email: 'user2@gmail.com')
        }
    ]
)
puts 'Finalizado!!'