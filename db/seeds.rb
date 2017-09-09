# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.where.not(email: "berdefymarlon@yahoo.de").destroy_all


boris = User.create! email: "boris@lewagon.org", first_name: "Boris", last_name: "Paillard", password: "123456"
boris_item = Item.create! title: "Versace jean", price: 150000, user: boris
boris_urls = [
  'http://www.versace.com/on/demandware.static/-/Library-Sites-ver-shared-trans/default/dw0d37641d/images/world-of-versace/jeans/Wovclp-Jeans_17_gallery.jpg',
  'http://designers-drive.com/wp-content/uploads/2015/05/Versace-Jeans-Couture-for-DD-7.jpg'
]
boris_item.photo_urls = boris_urls


alice = User.create! email: "alice@lewagon.org", first_name: "Alice", last_name: "Clavel", password: "123456"
alice_item = Item.create! title: "Ferrari Testarossa", price: 300, user: alice
alice_urls = [
  'http://auto.ferrari.com/de_DE/wp-content/themes/ferrari-gt/img/laferrari-thumb-360.jpg',
  'https://img.gta5-mods.com/q75/images/2015-ferrari-laferrari-hq-autospoiler/0d09b6-street1.png'
]
alice_item.photo_urls = alice_urls



users_attributes = [
        { first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          email: Faker::Internet.email
        },
        { first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          email: Faker::Internet.email
        },
        { first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          email: Faker::Internet.email
        },
        { first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          email: Faker::Internet.email
        },
        { first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          email: Faker::Internet.email
        },
        {
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          password: '123456',
          email: Faker::Internet.email
        }]
users_attributes.each { |user| User.create(user) }





items = [
        { title: "Ralph Lauren Pullover",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 50000
        },
        { title: "Philipp Plein Shirt",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 200000
        },
        { title: "Armani ora",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 60000
        },
        { title: "Breitling",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 10000000
        },
        { title: "Gucci cipö",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 150000
        },
        { title: "Yeezy",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 120000
        },
        { title: "CLS AMG",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 20000000
        },
        { title: "Hugo Boss",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 60000
        },
        { title: "Swarovski",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 130000
        },
        { title: "Supreme",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 60000
        },
        { title: "Kenzo Pullover",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 80000
        },
        { title: "Off-white Shirt",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 70000
        },
        { title: "Burberry",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 40000
        },
        { title: "Playstation 4",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 70000
        },
        { title: "Kawasaki",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 4000000
        },
        { title: "POLO ing",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 15000
        },
        { title: "Rolex Submariner",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 5000000
        },
        { title: "NIKE NMD",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 70000
        },
        { title: "Mercedes G63 Amg",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 28200000
        },
        { title: "Gucci öv",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 75000
        },
        { title: "A&F parfüm",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 30000
        },
        { title: "Hugo Boss ing",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 40000
        },
        { title: "Kenzo Pullover",
          description: Faker::MostInterestingManInTheWorld.quote,
          price: 130000
        }]


photo_urls = [
       [
          'http://img.depauli.com/pimages/196/196140_300.jpg',
          'http://www.storiedibarche.it/image/cache/Ralph%20Lauren%20Prezzo%20Uomo%20Felpa%20Nera%20Grande%20Pony%20In%20Grigio_1523-500x500.jpg',
          'http://img.depauli.com/pimages/218/218939_300.jpg'
       ],
       [
          'https://cdnd.lystit.com/photos/1b54-2016/01/07/philipp-plein-black-hotel-t-shirt-product-0-624978149-normal.jpeg',
          'http://images.flannels.com/images/imgzoom/59/59249103_xxl.jpg',
          'https://shop.turbostaat.de/stores/tmr/img/turbostaat-kerle-herren-shirt-bio-schwarz-nP7WSG.png'
       ],
       [
          'https://christ.scene7.com/is/image/Christ/regal/emporio-armani-herrenchronograph-classic-ar2434_84972126.jpg',
          'http://www.casasbahia-imagens.com.br/Relogios/relogiosMasculinos/Analogicomasculino/9203121/794899463/Relogio-Masculino-Armani-Emporio-HAR2434-Z-43mm-Prata-9203121.jpg',
          'http://www.urkompaniet.se/images/2.115018/armani-emporio-classic-ar0585-klocka.jpeg'
       ],
       [
          'https://lib.store.yahoo.net/lib/movadobaby/AB011012-B967-375A-LH.JPG',
          'http://www.urvaerket.dk/images/large/ab/breitling-AB011011-B967-435X-A20BA.1_LRG.jpg'
       ],
       [
          'https://images.gutefrage.net/media/fragen/bilder/wo-gibt-es-diese-gucci-schuhe-billig-zu-kaufen-/0_original.jpg?v=1430073744000',
          'https://akphoto2.ask.fm/857/837/065/1650003032-1r5rcsk-9b18i3ge1r5shj5/original/file.jpg',
          'https://s05-de.vinted.net/images/item_photos/461/939/166/661939164.jpeg?1479800457'
       ],
       [
          'https://stockx-360.imgix.net/adidas-yeezy-boost-350-v2-core-black-red-2017_TruView/Images/adidas-yeezy-boost-350-v2-core-black-red-2017_TruView/Lv2/img02.jpg?auto=format,compress&w=1117',
          'https://stockx-360.imgix.net/adidas-yeezy-boost-350-v2-core-black-red-2017_TruView/Images/adidas-yeezy-boost-350-v2-core-black-red-2017_TruView/Lv2/img13.jpg?auto=format,compress&w=1117',
          'https://www.flightclub.com/media/catalog/product/cache/1/image/800x570/9df78eab33525d08d6e5fb8d27136e95/a/d/adidas-yeezy-boost-350-pirblk-pirblk-pirblk-201122_3.jpg'
       ],
       [
          'https://i.ytimg.com/vi/nQErTnL9DhU/maxresdefault.jpg',
          'https://wypozyczalniasamochodowwarszawa.pl/media/filer_public_thumbnails/filer_public/cc/fa/ccfa48b8-c4be-4f37-89e4-ce4f18ad6def/cls-63-amg.jpg__555x314_q85_subsampling-2_upscale.jpg',
          'http://dreamcars.co.il/wp-content/uploads/2015/07/IMG_6059.jpg'
       ],
       [
          'https://i5.walmartimages.com/asr/16aef14e-f774-476d-bf65-4d635a2d92ec_1.f9a4027f03e1ec0395d79cea9168ac23.jpeg',
          'https://cf1.s3.souqcdn.com/item/2016/11/20/79/41/03/1/item_XL_7941031_17632588.jpg'
       ],
       [
          'https://www.swarovski.com/is-bin/intershop.static/WFS/SCO-Media-Site/-/-/publicimages/CG/B2C/PROD/600/Swarovski-Crystaldust-Solitaire-Set-5271193-W600.jpg',
          'http://www.barbago.com/images/201611/source_img/8303_G_1479615038376.jpg'
       ],
       [
          'https://process.filestackapi.com/AazSisOjUQx2TZJQX0PdNz/rotate=deg:exif/resize=width:800,height:600/output=compress:true,quality:70,strip:true/MzgbfKpSZaoKSyOdxXGR+t-shirt-supreme-bogo-x-louis-vuitton-custom-fan',
          'https://process.filestackapi.com/AazSisOjUQx2TZJQX0PdNz/rotate=deg:exif/resize=width:800,height:600/output=compress:true,quality:70,strip:true/Aem4NqRgQdGei94oPOA0+t-shirt-supreme-bogo-x-louis-vuitton-custom-fan'
       ],
       [
          'http://c.tutti.ch/big/kenzo-pullover-100-original-3184855245.jpg',
          'https://res.cloudinary.com/stylight/image/upload/e_trim/t_web_product_200x200/q_auto,f_auto/product-kenzo-tiger-sweater-black-146308412.jpg'
       ],
       [
          'http://momotaustralia.com.au/undertheroof/images/street/offwhite3.jpg',
          'https://ae01.alicdn.com/kf/HTB1vUxqIXXXXXcQXpXXq6xXFXXXQ/Off-white-digital-13-print-hoodie-plus-velvet-100-cotton-sweatshirt-outerwear.jpg'
       ],
       [
          'http://www.dkmf-rechtsanwaelte.de/images/Tableartdeko/Burberry%20Medium%20Pr%C3%BCfen%20Tragetasche%20%20Burberry%20Brit%20Parfum%20Fiyat.jpg',
          'https://ilooovs.files.wordpress.com/2013/03/burberry-medium-nova-check-tote-bag.jpg'
       ],
       [
          'http://www.product-reviews.net/wp-content/uploads/ps4-pro-contents-inside-box.jpg',
          'http://img.fenixzone.net/i/krN8JX1.jpeg'
       ],
       [
          'http://www.rsi-performance.de/images/umbauten/kawasaki/ZX10R2014ABS30ANI/2016-ZX10R-KRT-Akrapovic-Edition-002.JPG',
          'http://www.rsi-performance.de/images/bodis/000006.JPG.JPG'
       ],
       [
          'http://img.depauli.com/pimages/189/189355_norm.jpg',
          'http://img.depauli.com/pimages/156/156275_300.jpg'
       ],
       [
          'https://i.pinimg.com/736x/4e/c5/fd/4ec5fd2411d5ce313284181d010d2d5f--rolex-watches-wrist-watches.jpg',
          'https://s-media-cache-ak0.pinimg.com/originals/aa/a4/5c/aaa45caac8cb14df7db804e0bb1f582f.jpg'
       ],
       [
          'http://www.allar-bodenbau.de/images/allar-bodenbau/Hervorragend-Adidas-NMD-Herren-SER1523.jpg',
          'http://scontent.cdninstagram.com/t51.2885-15/s480x480/e35/14294918_873867229411439_720078459_n.jpg?ig_cache_key=MTMzMzM4MTQyMTgwMDM0ODc4Ng%3D%3D.2'
       ],
       [
          'https://images.cdn.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/merc-g63-amg-9_0.jpg?itok=PWqkEGha',
          'https://s3-eu-west-1.amazonaws.com/i-sale-auto.com/vehicle/5730/ec/thumb_5730ec8a7c22f1112d8b4568_vehicle_hd.jpeg'
       ],
       [
          'http://www.24.xylimited.com/241071727-2410717271-thickbox/fashion-handbags-gucci-belt-mv127sq-gucci-belts-gucci-belts-genuine-products.jpg',
          'http://www.24.xylimited.com/241071768-2410717681-thickbox/fashion-handbags-gucci-belt-mv168de-gucci-belts-gucci-belts-genuine-products.jpg'
       ],
       [
          'https://images-na.ssl-images-amazon.com/images/I/81lxy9Jw8ML._SY550_.jpg',
          'https://img.fragrancex.com/images/products/parent/medium/63612m.jpg'
       ],
       [
          'https://images-na.ssl-images-amazon.com/images/I/71PU2BN4ybL._UY445_.jpg',
          'https://img.fidcdn.net/r17/product/hugo-super-slim-fit-business-hemd-mit-new-kent-kragen-schwarz_9653213,9bd54e,484x646f.jpg'
       ],
       [
          'https://s-media-cache-ak0.pinimg.com/originals/1f/48/9f/1f489fc5e59f85570c25c3f40b4c76e2.jpg',
          'http://cdn.skim.gs/image/upload/v1456342769/msi/kenzo-sweater_fncetc.jpg',
          'http://cdna.lystit.com/photos/8369-2014/01/14/kenzo-white-embroidered-tiger-sweater-product-1-16735839-3-207699457-normal_large_flex.jpeg'
       ]
       ]

items.each_with_index do |item, index|
  item = Item.create user: boris
  item.photo_urls = photo_urls[index]
end




