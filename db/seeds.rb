# puts "Destroying all records..."
# # User.destroy_all
Setting.destroy_all
# # Tool.destroy_all
# # Machine.destroy_all
# # Technician.destroy_all
# # Site.destroy_all
# puts "All records destroyed."

# puts "Resetting primary keys..."
# # ActiveRecord::Base.connection.reset_pk_sequence!('settings')
# # ActiveRecord::Base.connection.reset_pk_sequence!('tools')
# # ActiveRecord::Base.connection.reset_pk_sequence!('machines')
# # ActiveRecord::Base.connection.reset_pk_sequence!('technicians') # Ensure it's plur
# # ActiveRecord::Base.connection.reset_pk_sequence!('sites')
# # ActiveRecord::Base.connection.reset_pk_sequence!('users')
# puts "Primary keys reset."

# puts "Creating sites..."
# Site.create(site_name: "GFC")
# Site.create(site_name: "GPH")
# Site.create(site_name: "GNW")
# puts "Sites created."

# puts "Creating machines..."
#GFC Machines
# Machine.create(manufacturer: "Negri Bossi", tonnage: 1000, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 15")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 800, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 14")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 650, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 13A")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 550, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 13")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 500, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 11")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 380, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 10")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 210, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 7")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 90, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 5")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 120, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 4")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 160, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 3")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 160, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 2")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 50, site_id: 1, machine_type: "Injection Moulding", machine_name: "IMM 1A")

# #GPH Machines
# Machine.create(manufacturer: "Arburg", tonnage: 50, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 7A")
# Machine.create(manufacturer: "Arburg", tonnage: 100, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 16")
# Machine.create(manufacturer: "Arburg", tonnage: 250, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 17")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 70, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 10")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 70, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 11")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 200, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 3")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 90, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 1")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 270, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 5")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 150, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 2")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 210, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 13")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 200, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 4")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 270, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 6")
# Machine.create(manufacturer: "Arburg", tonnage: 35, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 9")
# Machine.create(manufacturer: "Arburg", tonnage: 35, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 8")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 210, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 12")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 85, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 7")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 180, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 14")
# Machine.create(manufacturer: "Engel", tonnage: 220, site_id: 2, machine_type: "Injection Moulding", machine_name: "IMM 15")

# #GNW Machines
# Machine.create(manufacturer: "Sandretto", tonnage: 110, site_id: 3, machine_type: "Injection Moulding", machine_name: "M01")
# Machine.create(manufacturer: "Sandretto", tonnage: 110, site_id: 3, machine_type: "Injection Moulding", machine_name: "M02")
# Machine.create(manufacturer: "Sandretto", tonnage: 110, site_id: 3, machine_type: "Injection Moulding", machine_name: "M04")
# Machine.create(manufacturer: "Sandretto", tonnage: 270, site_id: 3, machine_type: "Injection Moulding", machine_name: "M30")
# Machine.create(manufacturer: "Sandretto", tonnage: 100, site_id: 3, machine_type: "Injection Moulding", machine_name: "M31")
# Machine.create(manufacturer: "Sandretto", tonnage: 60, site_id: 3, machine_type: "Injection Moulding", machine_name: "M32")
# Machine.create(manufacturer: "Sandretto", tonnage: 60, site_id: 3, machine_type: "Injection Moulding", machine_name: "M33")
# Machine.create(manufacturer: "Sandretto", tonnage: 100, site_id: 3, machine_type: "Injection Moulding", machine_name: "M34")
# Machine.create(manufacturer: "Sandretto", tonnage: 320, site_id: 3, machine_type: "Injection Moulding", machine_name: "M35")
# Machine.create(manufacturer: "Demag", tonnage: 35, site_id: 3, machine_type: "Injection Moulding", machine_name: "M44")
# Machine.create(manufacturer: "Sandretto", tonnage: 85, site_id: 3, machine_type: "Injection Moulding", machine_name: "M45")
# Machine.create(manufacturer: "Engel", tonnage: 80, site_id: 3, machine_type: "Injection Moulding", machine_name: "M60")
# Machine.create(manufacturer: "Engel", tonnage: 80, site_id: 3, machine_type: "Injection Moulding", machine_name: "M61")
# Machine.create(manufacturer: "Engel", tonnage: 80, site_id: 3, machine_type: "Injection Moulding", machine_name: "M62")
# Machine.create(manufacturer: "Engel", tonnage: 80, site_id: 3, machine_type: "Injection Moulding", machine_name: "M63")
# Machine.create(manufacturer: "Krauss Maffei", tonnage: 160, site_id: 3, machine_type: "Injection Moulding", machine_name: "M65")
# Machine.create(manufacturer: "Krauss Maffei", tonnage: 80, site_id: 3, machine_type: "Injection Moulding", machine_name: "M66")
# Machine.create(manufacturer: "Demag", tonnage: 35, site_id: 3, machine_type: "Injection Moulding", machine_name: "M110")
# Machine.create(manufacturer: "Sandretto", tonnage: 95, site_id: 3, machine_type: "Injection Moulding", machine_name: "M306")
# Machine.create(manufacturer: "Sandretto", tonnage: 190, site_id: 3, machine_type: "Injection Moulding", machine_name: "M408")
# Machine.create(manufacturer: "Sandretto", tonnage: 380, site_id: 3, machine_type: "Injection Moulding", machine_name: "M700")
# Machine.create(manufacturer: "Sandretto", tonnage: 110, site_id: 3, machine_type: "Injection Moulding", machine_name: "M68")
# Machine.create(manufacturer: "Engel", tonnage: 300, site_id: 3, machine_type: "Injection Moulding", machine_name: "M71")
# Machine.create(manufacturer: "Engel", tonnage: 400, site_id: 3, machine_type: "Injection Moulding", machine_name: "M70")
# Machine.create(manufacturer: "Engel", tonnage: 150, site_id: 3, machine_type: "Injection Moulding", machine_name: "M73")
# Machine.create(manufacturer: "Engel", tonnage: 50, site_id: 3, machine_type: "Injection Moulding", machine_name: "M72")
# Machine.create(manufacturer: "Engel", tonnage: 400, site_id: 3, machine_type: "Injection Moulding", machine_name: "M74")
# Machine.create(manufacturer: "Negri Bossi", tonnage: 500, site_id: 3, machine_type: "Injection Moulding", machine_name: "M75")
# puts "Machines created."

# puts "Creating technicians..."
# Technician.create(first_name: "Andy", last_name: "Dicken", site_id: 1)
# Technician.create(first_name: "Roy", last_name: "Pee", site_id: 1)
# Technician.create(first_name: "Ovidiu", last_name: "Stroie", site_id: 2)
# Technician.create(first_name: "Shane", last_name: "Smith", site_id: 2)
# Technician.create(first_name: "Brian", last_name: "Smith", site_id: 3)
# Technician.create(first_name: "Darryl", last_name: "Ainslie", site_id: 3)
# puts "Technicians created."

# create array of numbers between 100 and 250
# temps = (100..250).to_a

# create array of numbers between 1 and 6
# technicians = (1..6).to_a

# machines = (1..58).to_a

# tools = (1..9).to_a

# weights = (1..1000).to_a

puts "Creating settings..."
10.times do
  setting = Setting.create(
    tool_id: 9349,
    machine_id: 714,
    technician_id: 6,
    shot_weight: 1,
    sprue_weight: 1,
    nozzle_temp: 1,
    zone1_temp: 1,
    zone2_temp: 1,
    zone3_temp: 1,
    zone4_temp: 1,
    zone5_temp: 1,
    zone6_temp: 1,
    fh_temp: 1,
    mh_temp: 1,
    hr_zone1_temp: 1,
    hr_zone2_temp: 1,
    hr_zone3_temp: 1,
    hr_zone4_temp: 1,
    hr_zone5_temp: 1,
    hr_zone6_temp: 1,
    hr_zone7_temp: 1,
    hr_zone8_temp: 1,
    hr_zone9_temp: 1,
    hr_zone10_temp: 1,
    hr_zone11_temp: 1,
    hr_zone12_temp: 1,
    shot_size: 1,
    switchover_position: 1,
    decompression_after_screw: 1,
    decompression_before_screw: 1,
    screw_rpm: 1,
    back_pressure: 1,
    sprue_break: 1,
    injection_pressure: 1,
    injection_time: 1,
    screwback_time: 1,
    cushion: 1,
    cooling_time: 1,
    cycle_time: 1,
    clamping_force: 1,
    technicians_rating: 1,
    technicians_comments: "Test comment",
    hr_zone13_temp: 1,
    hr_zone14_temp: 1,
    hr_zone15_temp: 1,
    hr_zone16_temp: 1,
    hr_zone17_temp: 1,
    hr_zone18_temp: 1,
    hr_zone19_temp: 1,
    hr_zone20_temp: 1,
    hr_zone21_temp: 1,
    hr_zone22_temp: 1,
    hr_zone23_temp: 1,
    hr_zone24_temp: 1,
    zone7_temp: 1,
    zone8_temp: 1,
    zone9_temp: 1,
    zone10_temp: 1,
    zone11_temp: 1,
    zone12_temp: 1,
    opening_speed_1: 1,
    opening_speed_2: 1,
    opening_speed_3: 1,
    opening_position_1: 1,
    opening_position_2: 1,
    opening_position_3: 1,
    opening_stroke: 1,
    ejection_cycles: 1,
    closing_speed_1: 1,
    closing_speed_2: 1,
    closing_speed_3: 1,
    closing_position_1: 1,
    closing_position_2: 1,
    closing_position_3: 1,
    closing_pressure: 1,
    locking_tonnage: 1,
    mould_safety_position: 1,
    mould_safety_pressure: 1,
    clamp_lockup_position: 1.0,
    ejection_forward_speed_1: 1,
    ejection_forward_speed_2: 1,
    ejection_forward_position_1: 1,
    ejection_forward_position_2: 1,
    ejection_forward_pressure_1: 1,
    ejection_forward_pressure_2: 1,
    ejection_back_speed_1: 1,
    ejection_back_speed_2: 1,
    ejection_back_position_1: 1,
    ejection_back_position_2: 1,
    ejection_back_pressure_1: 1,
    ejection_back_pressure_2: 1,
    ejection_forward_delay: 1,
    ejection_back_delay: 1,
    injection_speed_1: 1,
    injection_position_1: 1,
    injection_pressure_1: 1,
    injection_speed_2: 1,
    injection_position_2: 1,
    injection_pressure_2: 1,
    injection_speed_3: 1,
    injection_position_3: 1,
    injection_pressure_3: 1,
    injection_speed_4: 1,
    injection_position_4: 1,
    injection_pressure_4: 1,
    injection_speed_5: 1,
    injection_position_5: 1,
    injection_pressure_5: 1,
    injection_speed_6: 1,
    injection_position_6: 1,
    injection_pressure_6: 1,
    holding_pressure_1: 1,
    holding_pressure_time_1: 1.0,
    holding_pressure_speed_1: 1,
    holding_pressure_2: 1,
    holding_pressure_time_2: 1.0,
    holding_pressure_speed_2: 1,
    holding_pressure_3: 1,
    holding_pressure_time_3: 1.0,
    holding_pressure_speed_3: 1,
    holding_pressure_4: 1,
    holding_pressure_time_4: 1.0,
    holding_pressure_speed_4: 1,
    holding_pressure_5: 1,
    holding_pressure_time_5: 1.0,
    holding_pressure_speed_5: 1,
    holding_pressure_6: 1,
    holding_pressure_time_6: 1.0,
    holding_pressure_speed_6: 1,
    screw_speed: 1,
    ejector_stroke: 1,
    cushion_position: 1.0,
    tool_heater_type: "Oil",
    drying_time: 1,
    drying_temp: 1
  )
  setting.versions.last.whodunnit = 1
end

puts "Settings created."
puts "Seeding complete."
