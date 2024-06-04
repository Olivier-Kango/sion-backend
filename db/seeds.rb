User.create(name:'Sion', email: 'admin@gmail.com', role:'admin', password: 'password', password_confirmation: 'password')

products = [{
  id: 171, name: 'Lampe 40W', image: 'https://res.cloudinary.com/du1qvhkp2/image/upload/v1696861116/images_99_aufmlw.jpg', unit_price: '3.5', quantity: 2, category: 'Hardware Store', unit_purchase_price: '3.0', created_at: '2023-10-09T14:19:26.979Z', updated_at: '2023-10-09T14:20:46.271Z', subcategory: 'Electrical',
}, {
  id: 86, name: 'Creation logos', image: 'https://res.cloudinary.com/du1qvhkp2/image/upload/v1709504677/logo_ampoule_new_light_engineering_png_u5wk02.png', unit_price: '100.0', quantity: 1, category: 'IT Services', unit_purchase_price: '100.0', created_at: '2024-03-03T22:24:59.537Z', updated_at: '2024-03-03T22:24:59.537Z', subcategory: 'IT Services',
}, {
  id: 78, name: 'Powerbank Veger', image: 'https://res.cloudinary.com/du1qvhkp2/image/upload/v1694487483/verger_fytsty.jpg', unit_price: '20.0', quantity: 2, category: 'Electronics', unit_purchase_price: '12.5', created_at: '2023-09-12T02:58:31.671Z', updated_at: '2024-02-03T02:35:22.105Z', subcategory: 'Telephony',
}, {
  id: 185, name: 'Nails Technician ', image: 'https://res.cloudinary.com/du1qvhkp2/image/upload/v1716373110/IMG_5256_gjzixy.jpg', unit_price: '3.0', quantity: 1, category: 'Hardware Store', unit_purchase_price: '3.0', created_at: '2024-05-22T10:20:14.027Z', updated_at: '2024-05-22T10:20:14.027Z', subcategory: 'General',
},
]

products.each do |product|
  Product.create!(product)
end
