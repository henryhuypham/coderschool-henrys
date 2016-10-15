def create_default_sections
  Section.create([{name: 'Breakfast'}, {name: 'Lunch'}, {name: 'Dinner'}, {name: 'Drink'}])
end

def create_default_menu
  food_names = [
      'Bánh Mì', 'Hủ Tiếu', 'Phở Bò', 'Bún Bò', 'Bánh Bao',
      'Cơm Văn Phòng', 'Bún Chả', 'Bó Bít Tết', 'Gà Rán', 'Cơm Niêu',
      'Cơm Tấm', 'Cơm Nhà', 'Cơm Bò', 'Nui Xào Bò', 'Bún Thịt Nướng',
      'La Vie', 'Coca Cola', 'Pepsi', '7 Up', 'Mirinda'
  ]
  Section.all.each_with_index do |section, index|
    (0..4).each do |i|
      FoodItem.create(
          name: food_names[index * 5 + i],
          description: Faker::Hipster.paragraph,
          price: Faker::Number.number(2).to_i * 1000,
          section: section,
          image_url: "http://loremflickr.com/320/240/#{food_names[index * 5 + i]}"
      )
    end
  end
end

### Seeds data ###

# create_default_sections
create_default_menu
