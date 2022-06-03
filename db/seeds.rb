puts "🌱 Seeding spices..."

# Seed your database here
a1 = Activity.create(name: "Excavation", estimated_hours: 81, percent_complete: 0, estimated_cost: 100000, order: 1)
a2 = Activity.create(name: "Formwork", estimated_hours: 105, percent_complete: 0, estimated_cost: 57000, order: 2)
a3 = Activity.create(name: "Concrete", estimated_hours: 42, percent_complete: 0, estimated_cost: 46000, order: 3)
a4 = Activity.create(name: "Install Roof", estimated_hours: 130, percent_complete: 0, estimated_cost: 180000, order:4)

e1 = Employee.create(name: "Ramon Rivera", wage_rate: 52, labor_union: "Laborer")
e2 = Employee.create(name: "Manuel Silva", wage_rate: 60, labor_union: "Laborer")
e3 = Employee.create(name: "Paul Fernandes", wage_rate: 46, labor_union: "Carpenter")
e4 = Employee.create(name: "Sam Footman", wage_rate: 46, labor_union: "Carpenter")
e5 = Employee.create(name: "Anthony Cull", wage_rate: 72, labor_union: "Operator")

puts "now seeding costs"

cost1a = Cost.create(name: "Safety Supplies", total_cost: 100, category: "Supplies", employee_id: e1.id, activity_id: a1.id)
cost1b = Cost.create(name: "employee1 hours", total_cost: rand(5..8)*e1.wage_rate, category: "Labor", employee_id: e1.id, activity_id: a1.id)
cost1c = Cost.create(name: "employee2 hours", total_cost: rand(5..8)*e2.wage_rate, category: "Labor", employee_id: e2.id, activity_id: a1.id)

cost2a = Cost.create(name: "Safety Supplies", total_cost: 100, category: "Supplies", employee_id: e1.id,activity_id:  a2.id)
cost2b = Cost.create(name: "employee1 hours", total_cost: rand(8..16)*e3.wage_rate, category: "Tools", employee_id: e3.id, activity_id: a2.id)
cost2c = Cost.create(name: "employee2 hours", total_cost: rand(8..16)*e1.wage_rate, category: "Tools", employee_id: e1.id, activity_id: a2.id)
cost2d = Cost.create(name: "employee3 hours", total_cost: rand(5..8)*e4.wage_rate, category: "Tools", employee_id: e4.id,activity_id:  a2.id)
cost2e = Cost.create(name: "Forms", total_cost: 1000, category: "Supplies", employee_id: e1.id, activity_id: a2.id)

cost3a = Cost.create(name: "Safety Supplies", total_cost: 100, category: "Supplies", employee_id: e1.id,activity_id:  a3.id)
cost3b = Cost.create(name: "employee1 hours", total_cost: rand(5..8)*e5.wage_rate, category: "Tools", employee_id: e5.id, activity_id: a3.id)
cost3c = Cost.create(name: "employee2 hours", total_cost: rand(8..16)*e4.wage_rate, category: "Tools", employee_id: e4.id,activity_id:  a3.id)
cost3d = Cost.create(name: "Concrete", total_cost: 5000, category: "Supplies", employee_id: e1.id,activity_id:  a3.id)

cost4a = Cost.create(name: "Safety Supplies", total_cost: 100, category: "Supplies", employee_id: e1.id, activity_id: a4.id)
cost4b = Cost.create(name: "employee1 hours", total_cost: rand(8..16)*e2.wage_rate, category: "Tools", employee_id: e2.id, activity_id: a4.id)
cost4c = Cost.create(name: "employee2 hours", total_cost: rand(5..8)*e3.wage_rate, category: "Tools", employee_id: e3.id, activity_id: a4.id)
cost4d = Cost.create(name: "Roofing Material", total_cost: 2500, category: "Supplies", employee_id: e1.id, activity_id: a4.id)

puts "✅ Done seeding!"
