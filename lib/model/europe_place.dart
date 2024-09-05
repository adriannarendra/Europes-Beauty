class EuropePlace {
  String city;
  String country;
  String mainImg;
  int ratingView;
  int ratingFood;
  int ratingHotel;
  String description;
  List<String> imgUrls;

  EuropePlace({
    required this.city,
    required this.country,
    required this.mainImg,
    required this.ratingView,
    required this.ratingFood,
    required this.ratingHotel,
    required this.description,
    required this.imgUrls,
  });
}

var europePlaceList = [
  EuropePlace(
  city: 'Paris',
  country: 'France',
  mainImg: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/07/a8/2c/caption.jpg?w=1400&h=1400&s=1',
  ratingView: 5,
  ratingFood: 5,
  ratingHotel: 4,
  description: "Paris, the capital of France, is celebrated for its art, fashion, and culture. Famous for landmarks like the Eiffel Tower, Notre-Dame Cathedral, and the Louvre Museum, Paris is a dream destination for many. The city’s romantic ambiance and vibrant café culture make it an enchanting place to visit. Whether you're strolling along the Seine or exploring the historic neighborhoods, Paris offers a timeless charm.",
  imgUrls: [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Paris_Night.jpg/640px-Paris_Night.jpg",
    "https://www.kayak.co.id/rimg/dimg/bd/d1/2f268866-city-36014-162f82486f9.jpg?width=1366&height=768&xhint=2485&yhint=1564&crop=true",
    "https://i0.wp.com/www.parisfoodaffair.com/wp-content/uploads/2016/01/IMG_5885.jpg?resize=700%2C523",
    "https://media.istockphoto.com/id/885209886/video/croissant-daily-breakfast-france-bakery-products.jpg?s=640x640&k=20&c=JMPGsaHb3F_41xen5JvnI7aVVj-cC1--5CQseZ50ArE="
  ]
),

EuropePlace(
  city: 'London',
  country: 'United Kingdom',
  mainImg: 'https://media.istockphoto.com/id/1294454411/photo/london-symbols-with-big-ben-double-decker-buses-and-red-phone-booth-in-england-uk.jpg?s=612x612&w=0&k=20&c=IX4_XZC-_P60cq9ZZbxw1CbL68hlv1L5-r_vSgEfx4k=',
  ratingView: 5,
  ratingFood: 4,
  ratingHotel: 4,
  description: 'London, the capital of the United Kingdom, is a bustling metropolis with a rich history and diverse culture. Iconic landmarks include the Tower of London, Buckingham Palace, and the British Museum. London’s world-class theaters, museums, and galleries make it a cultural hub. From the historic Westminster Abbey to the vibrant streets of Camden, London offers something for every visitor.',
  imgUrls: [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/London_Skyline_%28125508655%29.jpeg/640px-London_Skyline_%28125508655%29.jpeg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/f5/de/london.jpg?w=1400&h=1400&s=1",
    "https://babylontours.com/wp-content/uploads/2016/09/london-441853_960_720.jpg",
    "https://images.contentstack.io/v3/assets/blt00454ccee8f8fe6b/blt55aa6fe881d45976/6091355f1671db1046c1a59c/UK_CityofLondon_UK_Header.jpg"
  ]
),

EuropePlace(
  city: 'Rome',
  country: 'Italy',
  mainImg: 'https://tourismmedia.italia.it/is/image/mitur/20220127150143-colosseo-roma-lazio-shutterstock-756032350-1?wid=1600&hei=900&fit=constrain,1&fmt=webp',
  ratingView: 5,
  ratingFood: 5,
  ratingHotel: 4,
  description: 'Rome, the capital of Italy, is known as the Eternal City for its nearly 3,000 years of globally influential art, architecture, and culture. The city is home to the Vatican City, St. Peter’s Basilica, and the Colosseum. Rome’s ancient ruins, historic churches, and Renaissance art are a testament to its rich history. From the bustling Piazza Navona to the serene gardens of Villa Borghese, Rome is a city of contrasts and timeless beauty.',
  imgUrls: [
    "https://www.romeloft.com/wp-content/uploads/2015/11/rome-panorama.jpg",
    "https://www.turismoroma.it/sites/default/files/Roma%20in%20breve.jpg",
    "https://pipandthecity.com/wp-content/uploads/2020/07/Bodelwyddan-Castle-20.jpg",
    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/23/d0/aa/00/caption.jpg?w=800&h=600&s=1"
  ]
),

EuropePlace(
  city: 'Barcelona',
  country: 'Spain',
  mainImg: 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/07/ac/80/caption.jpg?w=1400&h=1400&s=1',
  ratingView: 5,
  ratingFood: 5,
  ratingHotel: 4,
  description: 'Barcelona, the vibrant capital of Spain’s Catalonia region, is known for its unique architecture, rich culture, and lively atmosphere. The city is home to Antoni Gaudí’s masterpiece, the Sagrada Família, as well as the bustling Las Ramblas and the historic Gothic Quarter. Barcelona’s beaches, world-class dining, and energetic nightlife make it a top destination in Europe.',
  imgUrls: [
    "https://res.cloudinary.com/sagacity/image/upload/c_crop,h_770,w_1000,x_0,y_0/c_limit,f_auto,fl_lossy,q_80,w_1080/shutterstock_174454670_gicbgy.jpg",
    "https://static.independent.co.uk/2023/03/10/14/iStock-1320014700.jpg?width=1200",
    "https://www.bonappetour.com/blog/wp-content/uploads/2016/12/what-to-eat-in-barcelona-compressor.jpg",
    "https://images.ctfassets.net/qr8kennq1pom/5Odp3sElFAGyWkzE2G5TR2/7491b42e521dac513e20e1de13e80ab0/Traditional_and_Unique_food_in_Spain.jpg?fm=jpg&fl=progressive&q=70"
  ]
),

EuropePlace(
  city: 'Vienna',
  country: 'Austria',
  mainImg: 'https://img.monocle.com/25-25/dsc07069-5f0dbcf571bc1.jpg?g=center&q=90',
  ratingView: 5,
  ratingFood: 4,
  ratingHotel: 4,
  description: 'Vienna, Austria’s capital, is known for its artistic and intellectual legacy shaped by residents like Mozart, Beethoven, and Sigmund Freud. The city is also known for its Imperial palaces, including Schönbrunn, the Habsburgs’ summer residence. In the MuseumsQuartier district, historic and contemporary buildings display works by Egon Schiele, Gustav Klimt, and others. The city’s coffee-house culture, opera, and classical music make Vienna a paradise for those with a passion for art and history. With its charming streets, majestic architecture, and rich cultural life, Vienna is one of Europe’s most beautiful cities.',
  imgUrls: [
    "https://www.wien.info/resource/image/290578/Video-Header/1920/1080/58eef66efccfe0e149afaba6917d2040/064391A20CDB6CDC7EBC0812F4508B11/40367-graben-einkaufen-shopping-altstadt-einkaufsstrassen.webp",
    "https://www.thetimes.com/imageserver/image/%2Fmethode%2Ftimes%2Fprod%2Fweb%2Fbin%2F80352cd4-d2fd-46cf-ba88-aa7d32bf1442.jpg?crop=1564%2C880%2C318%2C0&resize=1200",
    "https://www.willflyforfood.net/wp-content/uploads/2022/11/austrian-food-wienerschnitzel.jpg.webp",
    "https://static.toiimg.com/thumb/52868023.cms?resizemode=75&width=1200&height=900"
  ]
),

EuropePlace(
  city: 'Prague',
  country: 'Czech Republic',
  mainImg: 'https://www.flightgift.com/media/wp/FG/2023/09/Blick-auf-die-Karlsbrucke-in-deinem-Urlaub-in-Prag.webp',
  ratingView: 5,
  ratingFood: 4,
  ratingHotel: 4,
  description: 'Prague, the capital of the Czech Republic, is a city with a rich history and a stunning architectural heritage. The Vltava River flows through the city, and its bridges connect the Old Town and the Lesser Town. The city’s iconic sites include the Gothic Charles Bridge, the baroque St. Nicholas Church, and the medieval Astronomical Clock. Prague’s historic center is a UNESCO World Heritage site, and the city is often referred to as "the City of a Hundred Spires" for its many churches and towers. With its enchanting old-world charm and vibrant cultural scene, Prague is a must-visit destination.',
  imgUrls: [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Prague_%286365119737%29.jpg/800px-Prague_%286365119737%29.jpg",
    "https://www.outlooktravelmag.com/media/Prague-Main-jpg.webp",
    "https://images.squarespace-cdn.com/content/v1/53162615e4b08f2413caa7c2/1461580582635-TTPRJ6BK49CE6ZK7QKDT/czechclassics-1.jpg?format=1500w",
    "https://www.prague.fm/wp-content/uploads/Depositphotos_4307757_XL-1.jpg"
  ]
),

EuropePlace(
  city: 'Florence',
  country: 'Italy',
  mainImg: 'https://tourismmedia.italia.it/is/image/mitur/20210401173629-firenze-toscana-gettyimages-1145040590-2?wid=1600&hei=900&fit=constrain,1&fmt=webp',
  ratingView: 5,
  ratingFood: 5,
  ratingHotel: 4,
  description: 'Florence, the capital of Italy’s Tuscany region, is famous for its art, architecture, and monuments. The city is home to masterpieces like Michelangelo’s "David" and Botticelli’s "The Birth of Venus." Florence’s historic center is a UNESCO World Heritage site, and its beautiful squares, such as Piazza della Signoria, and historic bridges, like the Ponte Vecchio, make it a delight to explore. Florence’s rich history, art, and culture make it a key destination for anyone exploring Europe.',
  imgUrls: [
    "https://img.static-kl.com/images/media/E004BD3A-085B-4FED-8115F78EA5567BCC",
    "https://media.tacdn.com/media/attractions-splice-spp-720x480/12/7c/95/c9.jpg",
    "https://giadzy.com/cdn/shop/articles/IMG_8269.jpg?v=1684798533",
    "https://cdn.tasteatlas.com/images/dishes/94b01cead6674455b1e88567ce6de1a0.jpg?m=facebook"
  ]
),
];