def create_default_sections
  Section.create([{name: 'Breakfast'}, {name: 'Lunch'}, {name: 'Dinner'}, {name: 'Drink'}])
end

## Seeds data
create_default_sections
