User.create!(name:  "Zvonimir Kolumbic",
             email: "zvonimir.kolumbic1@ri.t-com.hr",
             password:              "zv0n1m1r",
             password_confirmation: "zv0n1m1r",
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

5.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              activated: true,
              activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
5.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

Ware.create!([
  {title: "Electric Longboard", category: " CarBikeBoat", phase: "Pick", brand: "Koowheel", image: "electric_longboard.jpg", details: "Electric Skateboard; Kooboard-18; 900 x 250 x 130 mm; 9,3 kg; black, red, blue, green, orange, white; 30 - 42 km/h; 55 Ah; Charger time: 2.5 hours; Max Load: 1275 N (mass: 130 kg).", annex: "electric_longboard.pdf", quantity: 1, q_unit: "piece", evaluation: "5.0", in_showroom: false, s_location: "China", weight_kg: "10.0", dim_a_cm: 100, dim_b_cm: 30, dim_h_cm: 15, d_location: "ateG4BB", price: "700.0", down_p: "140.0", deadline: "2018-11-15", contract: "ContractNo_01.pdf", bill: "Ware: 700 €\r\nDelivery: 10 €\r\nDuty:70 € \r\nTax: 120 €\r\nTotal: 900 €", conclusion: "Maybe it should be better to find a cheaper electric longboard.", target_no: 150, ok_no: 1},
  {title: "Car Aromatherapy", category: " CarBikeBoat", phase: "Pick", brand: "Shenzhen Zhi Tong", image: "CarAroma.jpg", details: "Usb waterless", annex: "", quantity: 1, q_unit: "piece", evaluation: "4.9", in_showroom: false, s_location: "China", weight_kg: "0.12", dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atHome", price: "20.0", down_p: "5.0", deadline: "2018-09-28", contract: "", bill: "", conclusion: "", target_no: 100, ok_no: 1},
  {title: "Arduino Starter Kit", category: "BabyKidToy", phase: "Pick", brand: "Wuhu Landzo", image: "ArduinoKit.jpg", details: "", annex: "ArduinoKit.pdf", quantity: 1, q_unit: "piece", evaluation: "4.9", in_showroom: false, s_location: "China", weight_kg: nil, dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atHome", price: "40.0", down_p: "5.0", deadline: "2018-09-28", contract: "", bill: "", conclusion: "", target_no: 100, ok_no: 1},
  {title: "Juicer", category: "GroceryBeautyHealth", phase: "Pick", brand: "Omega", image: "JuicerOmegaJ800601web.jpg", details: "", annex: nil, quantity: 1, q_unit: "piece", evaluation: "4.8", in_showroom: false, s_location: "USA", weight_kg: "3.0", dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atDuty", price: "299.0", down_p: "50.0", deadline: "2018-09-07", contract: "", bill: "", conclusion: "", target_no: 50, ok_no: 1},
  {title: "YlangYlang", category: "GroceryBeautyHealth", phase: "Pick", brand: "Biofinest", image: "YlangYlangEssential01web.jpg", details: "", annex: nil, quantity: 100, q_unit: "mliter", evaluation: "4.9", in_showroom: false, s_location: "USA", weight_kg: "0.1", dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atHome", price: "64.0", down_p: "10.0", deadline: "2018-09-23", contract: "", bill: "", conclusion: "", target_no: 50, ok_no: 1},
  {title: "Camera", category: "ComputerPhoneElectronics", phase: "Pick", brand: "Fujifilm", image: "instaxmini801web.jpg", details: "", annex: nil, quantity: 2, q_unit: "piece", evaluation: "4.8", in_showroom: false, s_location: "Japan", weight_kg: "0.2", dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atHome", price: "24.0", down_p: "5.0", deadline: "2018-09-07", contract: "Contract55", bill: "Plati 24 dolara", conclusion: "Dobar posao", target_no: 50, ok_no: 1},
  {title: "Star Wars", category: "BabyKidToy", phase: "Pick", brand: "LEGO", image: "LegoStarWars01web.jpg", details: "", annex: nil, quantity: 1, q_unit: "piece", evaluation: "4.7", in_showroom: false, s_location: "Denmark", weight_kg: "0.0", dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "ateG4BB", price: "40.0", down_p: "5.0", deadline: "2018-08-05", contract: "", bill: "", conclusion: "", target_no: 75, ok_no: 1},
  {title: "e-reader", category: "ComputerPhoneElectronics", phase: "Pick", brand: "Amazon", image: "KindlePaperwhite01web.jpg", details: "", annex: nil, quantity: 1, q_unit: "piece", evaluation: "4.5", in_showroom: false, s_location: "USA", weight_kg: nil, dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "ateG4BB", price: "119.99", down_p: "20.0", deadline: "2018-08-05", contract: "", bill: "", conclusion: "", target_no: 100, ok_no: 1},
  {title: "Tablet", category: "ComputerPhoneElectronics", phase: "Group", brand: "Amazon", image: "FireTablet01web.jpg", details: "", annex: nil, quantity: 1, q_unit: "piece", evaluation: "4.2", in_showroom: false, s_location: "USA", weight_kg: nil, dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atHome", price: "54.99", down_p: "10.0", deadline: "2018-08-05", contract: "", bill: "", conclusion: "", target_no: 50, ok_no: 1},
  {title: "CoconatOil", category: "GroceryBeautyHealth", phase: "Reference", brand: "Carrington Farms", image: "CoconatOil01web.jpg", details: "", annex: nil, quantity: 1, q_unit: "piece", evaluation: "4.7", in_showroom: false, s_location: "USA", weight_kg: nil, dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atHome", price: "29.0", down_p: "5.0", deadline: "2018-08-05", contract: "", bill: "", conclusion: "", target_no: 100, ok_no: 1},
  {title: "Headphones", category: "ComputerPhoneElectronics", phase: "Wait", brand: "Audio-Technica", image: "HeadphonesATH-M50x01web.jpg", details: "", annex: nil, quantity: 1, q_unit: "piece", evaluation: "4.7", in_showroom: false, s_location: "USA", weight_kg: nil, dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atHome", price: "141.0", down_p: "20.0", deadline: "2018-08-05", contract: "", bill: "", conclusion: "", target_no: 25, ok_no: 1},
  {title: "Lights", category: "HomeGardenTool", phase: "Group", brand: "URPOWER", image: "SolarLight01web.jpg", details: "", annex: nil, quantity: 4, q_unit: "piece", evaluation: "4.5", in_showroom: false, s_location: "USA", weight_kg: "0.0", dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atHome", price: "39.0", down_p: "5.0", deadline: "2018-09-07", contract: "", bill: "", conclusion: "", target_no: 100, ok_no: 1},
  {title: "Humidifier", category: "HomeGardenTool", phase: "Reference", brand: "Pure Enrichment", image: "MistHumidifier01web.jpg", details: "", annex: nil, quantity: 1, q_unit: "piece", evaluation: "4.7", in_showroom: false, s_location: "USA", weight_kg: "0.0", dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atHome", price: "49.0", down_p: "5.0", deadline: "2018-08-07", contract: "", bill: "", conclusion: "", target_no: 50, ok_no: 1},
  {title: "Car", category: "BabyKidToy", phase: "Reference", brand: "Hot Wheels", image: "Toy20CarPack01web.jpg", details: "", annex: nil, quantity: 20, q_unit: "piece", evaluation: "4.8", in_showroom: false, s_location: "USA", weight_kg: "1.0", dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atHome", price: "16.0", down_p: "5.0", deadline: "2018-08-07", contract: "", bill: "", conclusion: "", target_no: 100, ok_no: 1},
  {title: "Toolkit", category: "HomeGardenTool", phase: "Wait", brand: "Stanley", image: "ToolKit65Pices01web.jpg", details: "", annex: nil, quantity: 65, q_unit: "piece", evaluation: "4.7", in_showroom: false, s_location: "USA", weight_kg: "2.0", dim_a_cm: nil, dim_b_cm: nil, dim_h_cm: nil, d_location: "atHome", price: "39.0", down_p: "5.0", deadline: "2018-08-07", contract: "", bill: "", conclusion: "", target_no: 50, ok_no: 1}
])