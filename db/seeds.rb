puts "Destroying all records..."
User.destroy_all
Setting.destroy_all
Tool.destroy_all
Machine.destroy_all
Technician.destroy_all
Site.destroy_all
puts "All records destroyed."

puts "Resetting primary keys..."
ActiveRecord::Base.connection.reset_pk_sequence!('settings')
ActiveRecord::Base.connection.reset_pk_sequence!('tools') # Ensure it's 'tools', not 'tool'
ActiveRecord::Base.connection.reset_pk_sequence!('machines')
ActiveRecord::Base.connection.reset_pk_sequence!('technicians') # Ensure it's pluralized
ActiveRecord::Base.connection.reset_pk_sequence!('sites')
ActiveRecord::Base.connection.reset_pk_sequence!('users')
puts "Primary keys reset."

puts "Creating sites..."
Site.create(site_name: "GFC")
Site.create(site_name: "GPH")
Site.create(site_name: "GNW")
puts "Sites created."

puts "Creating machines..."
#GFC Machines
Machine.create(manufacturer: "Negri Bossi", tonnage: 1000, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 15")
Machine.create(manufacturer: "Negri Bossi", tonnage: 800, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 14")
Machine.create(manufacturer: "Negri Bossi", tonnage: 650, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 13A")
Machine.create(manufacturer: "Negri Bossi", tonnage: 550, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 13")
Machine.create(manufacturer: "Negri Bossi", tonnage: 500, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 11")
Machine.create(manufacturer: "Negri Bossi", tonnage: 380, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 10")
Machine.create(manufacturer: "Negri Bossi", tonnage: 210, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 7")
Machine.create(manufacturer: "Negri Bossi", tonnage: 90, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 5")
Machine.create(manufacturer: "Negri Bossi", tonnage: 120, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 4")
Machine.create(manufacturer: "Negri Bossi", tonnage: 160, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 3")
Machine.create(manufacturer: "Negri Bossi", tonnage: 160, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 2")
Machine.create(manufacturer: "Negri Bossi", tonnage: 50, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 1A")

#GPH Machines
Machine.create(manufacturer: "Arburg", tonnage: 50, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 7A")
Machine.create(manufacturer: "Arburg", tonnage: 100, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 16")
Machine.create(manufacturer: "Arburg", tonnage: 250, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 17")
Machine.create(manufacturer: "Negri Bossi", tonnage: 70, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 10")
Machine.create(manufacturer: "Negri Bossi", tonnage: 70, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 11")
Machine.create(manufacturer: "Negri Bossi", tonnage: 200, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 3")
Machine.create(manufacturer: "Negri Bossi", tonnage: 90, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 1")
Machine.create(manufacturer: "Negri Bossi", tonnage: 270, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 5")
Machine.create(manufacturer: "Negri Bossi", tonnage: 150, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 2")
Machine.create(manufacturer: "Negri Bossi", tonnage: 210, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 13")
Machine.create(manufacturer: "Negri Bossi", tonnage: 200, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 4")
Machine.create(manufacturer: "Negri Bossi", tonnage: 270, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 6")
Machine.create(manufacturer: "Arburg", tonnage: 35, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 9")
Machine.create(manufacturer: "Arburg", tonnage: 35, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 8")
Machine.create(manufacturer: "Negri Bossi", tonnage: 210, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 12")
Machine.create(manufacturer: "Negri Bossi", tonnage: 85, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 7")
Machine.create(manufacturer: "Negri Bossi", tonnage: 180, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 14")
Machine.create(manufacturer: "Engel", tonnage: 220, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 15")

#GNW Machines
Machine.create(manufacturer: "Sandretto", tonnage: 110, site_id: 3, machine_type: "Injection Moulding", machine_name: "M01")
Machine.create(manufacturer: "Sandretto", tonnage: 110, site_id: 3, machine_type: "Injection Moulding", machine_name: "M02")
Machine.create(manufacturer: "Sandretto", tonnage: 110, site_id: 3, machine_type: "Injection Moulding", machine_name: "M04")
Machine.create(manufacturer: "Sandretto", tonnage: 270, site_id: 3, machine_type: "Injection Moulding", machine_name: "M30")
Machine.create(manufacturer: "Sandretto", tonnage: 100, site_id: 3, machine_type: "Injection Moulding", machine_name: "M31")
Machine.create(manufacturer: "Sandretto", tonnage: 60, site_id: 3, machine_type: "Injection Moulding", machine_name: "M32")
Machine.create(manufacturer: "Sandretto", tonnage: 60, site_id: 3, machine_type: "Injection Moulding", machine_name: "M33")
Machine.create(manufacturer: "Sandretto", tonnage: 100, site_id: 3, machine_type: "Injection Moulding", machine_name: "M34")
Machine.create(manufacturer: "Sandretto", tonnage: 320, site_id: 3, machine_type: "Injection Moulding", machine_name: "M35")
Machine.create(manufacturer: "Demag", tonnage: 35, site_id: 3, machine_type: "Injection Moulding", machine_name: "M44")
Machine.create(manufacturer: "Sandretto", tonnage: 85, site_id: 3, machine_type: "Injection Moulding", machine_name: "M45")
Machine.create(manufacturer: "Engel", tonnage: 80, site_id: 3, machine_type: "Injection Moulding", machine_name: "M60")
Machine.create(manufacturer: "Engel", tonnage: 80, site_id: 3, machine_type: "Injection Moulding", machine_name: "M61")
Machine.create(manufacturer: "Engel", tonnage: 80, site_id: 3, machine_type: "Injection Moulding", machine_name: "M62")
Machine.create(manufacturer: "Engel", tonnage: 80, site_id: 3, machine_type: "Injection Moulding", machine_name: "M63")
Machine.create(manufacturer: "Krauss Maffei", tonnage: 160, site_id: 3, machine_type: "Injection Moulding", machine_name: "M65")
Machine.create(manufacturer: "Krauss Maffei", tonnage: 80, site_id: 3, machine_type: "Injection Moulding", machine_name: "M66")
Machine.create(manufacturer: "Demag", tonnage: 35, site_id: 3, machine_type: "Injection Moulding", machine_name: "M110")
Machine.create(manufacturer: "Sandretto", tonnage: 95, site_id: 3, machine_type: "Injection Moulding", machine_name: "M306")
Machine.create(manufacturer: "Sandretto", tonnage: 190, site_id: 3, machine_type: "Injection Moulding", machine_name: "M408")
Machine.create(manufacturer: "Sandretto", tonnage: 380, site_id: 3, machine_type: "Injection Moulding", machine_name: "M700")
Machine.create(manufacturer: "Sandretto", tonnage: 110, site_id: 3, machine_type: "Injection Moulding", machine_name: "M68")
Machine.create(manufacturer: "Engel", tonnage: 300, site_id: 3, machine_type: "Injection Moulding", machine_name: "M71")
Machine.create(manufacturer: "Engel", tonnage: 400, site_id: 3, machine_type: "Injection Moulding", machine_name: "M70")
Machine.create(manufacturer: "Engel", tonnage: 150, site_id: 3, machine_type: "Injection Moulding", machine_name: "M73")
Machine.create(manufacturer: "Engel", tonnage: 50, site_id: 3, machine_type: "Injection Moulding", machine_name: "M72")
Machine.create(manufacturer: "Engel", tonnage: 400, site_id: 3, machine_type: "Injection Moulding", machine_name: "M74")
Machine.create(manufacturer: "Negri Bossi", tonnage: 500, site_id: 3, machine_type: "Injection Moulding", machine_name: "M75")
puts "Machines created."

puts "Creating technicians..."
Technician.create(first_name: "Andy", last_name: "Dicken", site_id: 1)
Technician.create(first_name: "Roy", last_name: "Pee", site_id: 1)
Technician.create(first_name: "Ovidiu", last_name: "Stroie", site_id: 2)
Technician.create(first_name: "Shane", last_name: "Smith", site_id: 2)
Technician.create(first_name: "Brian", last_name: "Smith", site_id: 3)
Technician.create(first_name: "Darryl", last_name: "Ainslie", site_id: 3)
puts "Technicians created."

puts "Creating tools..."
Tool.create(tool_name: "MAG69", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG70", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG71", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG72", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG73", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG74", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG75", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG76", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG77", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
puts "Tools created."

# create array of numbers between 100 and 250
temps = (100..250).to_a

# create array of numbers between 1 and 6
technicians = (1..6).to_a

machines = (1..58).to_a

tools = (1..9).to_a

weights = (1..1000).to_a

puts "Creating settings..."
100.times do
  Setting.create!(
    machine_id: machines.sample,
    tool_id: rand(1..9),
    technician_id: technicians.sample,
    shot_weight: weights.sample,
    sprue_weight: weights.sample,
    nozzle_temp: temps.sample,
    zone1_temp: temps.sample,
    zone2_temp: temps.sample,
    zone3_temp: temps.sample,
    zone4_temp: temps.sample,
    zone5_temp: temps.sample,
    zone6_temp: temps.sample,
    fh_temp: temps.sample,
    mh_temp: temps.sample,
    hr_zone1_temp: temps.sample,
    hr_zone2_temp: temps.sample,
    hr_zone3_temp: temps.sample,
    hr_zone4_temp: temps.sample,
    hr_zone5_temp: temps.sample,
    hr_zone6_temp: temps.sample,
    hr_zone7_temp: temps.sample,
    hr_zone8_temp: temps.sample,
    hr_zone9_temp: temps.sample,
    hr_zone10_temp: temps.sample,
    hr_zone11_temp: temps.sample,
    hr_zone12_temp: temps.sample,
    shot_size: weights.sample,
    switchover_position: rand(1..100),
    decompression_after_screw: rand(1..100),
    decompression_before_screw: rand(1..100),
    screw_rpm: rand(1..100),
    back_pressure: rand(1..100),
    sprue_break: rand(1..100),
    injection_pressure: rand(1..100),
    injection_time: rand(10..50),
    screwback_time: rand(1..50),
    cushion: rand(1..50),
    cooling_time: rand(20..50),
    cycle_time: rand(10..360),
    clamping_force: rand(50..1000),
    technicians_rating: rand(1..5),
    technicians_comments: "This is a comment from the technician."
  )
end

puts "Settings created."
puts "Seeding complete."
