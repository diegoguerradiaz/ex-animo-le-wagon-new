provider1 = User.create(
  email: "hortifruti@mail.com",
  company_name: "Hortifruti",
  category: "Supermarket",
  role: "Provider",
  phone_number: 99999999,
  password: "123456",
  photo_url: "https://res.cloudinary.com/dnczymjwi/image/upload/v1637871335/ex-animo/hortifruti_ws97yn.jpg"
)
provider2 = User.create(
  email: "mundial@mail.com",
  company_name: "Supermercado Mundial",
  category: "Supermarket",
  role: "Provider",
  phone_number: 99999999,
  password: "123456",
  photo_url: "https://res.cloudinary.com/dnczymjwi/image/upload/v1637871335/ex-animo/mundial_b75cfv.png"
)
provider3 = User.create(
  email: "aprazivel@mail.com",
  company_name: "Aprazivel Restaurante",
  category: "Restaurant",
  role: "Provider",
  phone_number: 99999999,
  password: "123456",
  photo_url: "https://res.cloudinary.com/dnczymjwi/image/upload/v1637871335/ex-animo/Aprazivel-Restaurante-Rio-1_vmozag.jpg"
)
provider4 = User.create(
  email: "paodeazucar@mail.com",
  company_name: "Pao de Acucar",
  category: "Grocery Store",
  role: "Provider",
  phone_number: 99999999,
  password: "123456",
  photo_url: "https://res.cloudinary.com/dnczymjwi/image/upload/v1637871335/ex-animo/paodeacucar_gq5ufj.png"
)


shelter1 = User.create(
  email: "institutoLar@mail.com",
  company_name: "Instituto Lar",
  category: "Shelter for Homeless",
  role: "Shelter",
  phone_number: 99999999,
  password: "123456",
  photo_url: "https://res.cloudinary.com/dnczymjwi/image/upload/v1637871335/ex-animo/inlar_btko82.png"
)
shelter2 = User.create(
  email: "missiondirect@mail.com",
  company_name: "Mission Direct",
  category: "Shelter for children",
  role: "Shelter",
  phone_number: 99999999,
  password: "123456",
  photo_url: "https://res.cloudinary.com/dnczymjwi/image/upload/v1637871335/ex-animo/mission_krcfpz.jpg"
)

food_offer_1 = FoodOffer.create(
  category: "Nutrients & Vegetables",
  total_unit: 20,
  offer_name: "Donation for the ones in need 🙌🙏",
  user_id: provider2.id,
  offer_description: "Greens, fruits, beans, milk and much more.",
  delivery: true
)


food_offer_2 = FoodOffer.create(
  category: "Vegetables",
  total_unit: 20,
  offer_name: "Donation for the ones in need 🙌🙏",
  user_id: provider2.id,
  offer_description: "Greens and veggies",
  delivery: true
)

food_offer_3 = FoodOffer.create(
  category: "Meals for kids",
  total_unit: 80,
  offer_name: "Pre-made meals for the ones in need 🙌🙏",
  user_id: provider3.id,
  offer_description: "100 pre-made meals.",
  delivery: true
)
