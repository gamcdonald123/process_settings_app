Setting.destroy_all
Tool.destroy_all
Machine.destroy_all
Technician.destroy_all
Site.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('settings')
ActiveRecord::Base.connection.reset_pk_sequence!('tools') # Ensure it's 'tools', not 'tool'
ActiveRecord::Base.connection.reset_pk_sequence!('machines')
ActiveRecord::Base.connection.reset_pk_sequence!('technicians') # Ensure it's pluralized
ActiveRecord::Base.connection.reset_pk_sequence!('sites')

Site.create(site_name: "GFC")
Site.create(site_name: "GPH")
Site.create(site_name: "GNW")

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


Technician.create(first_name: "Andy", last_name: "Dicken", site_id: 1)
Technician.create(first_name: "Roy", last_name: "Pee", site_id: 1)
Technician.create(first_name: "Ovidiu", last_name: "Stroie", site_id: 2)
Technician.create(first_name: "Shane", last_name: "Smith", site_id: 2)
Technician.create(first_name: "Brian", last_name: "Smith", site_id: 3)
Technician.create(first_name: "Darryl", last_name: "Ainslie", site_id: 3)

Tool.create(tool_name: "MAG69", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG70", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG71", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG72", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG73", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG74", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG75", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG76", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])
Tool.create(tool_name: "MAG77", customer: "Magna", part_nos: ["MAG-34567", "MAG-45678"])

Setting.create(tool_id: 1, machine_id: 1, technician_id: 1, shot_weight: 50, sprue_weight: 10, nozzle_temp: 150, zone1_temp: 180, zone2_temp: 160, zone3_temp: 150, shot_size: 200, switchover_position: 200, decompression_after_screw: 200, decompression_before_screw: 200, screw_rpm: 200, back_pressure: 200, sprue_break: 200, injection_pressure: 200, injection_time: 200, screwback_time: 200, cushion: 200, cooling_time: 200, cycle_time: 200, clamping_force: 200, technicians_rating: 5, technicians_comments: "Good")
Setting.create(tool_id: 2, machine_id: 1, technician_id: 2, shot_weight: 50, sprue_weight: 10, nozzle_temp: 150, zone1_temp: 180, zone2_temp: 160, zone3_temp: 150, shot_size: 200, switchover_position: 200, decompression_after_screw: 200, decompression_before_screw: 200, screw_rpm: 200, back_pressure: 200, sprue_break: 200, injection_pressure: 200, injection_time: 200, screwback_time: 200, cushion: 200, cooling_time: 200, cycle_time: 200, clamping_force: 200, technicians_rating: 5, technicians_comments: "Good")
Setting.create(tool_id: 1, machine_id: 1, technician_id: 2, shot_weight: 50, sprue_weight: 10, nozzle_temp: 150, zone1_temp: 180, zone2_temp: 160, zone3_temp: 150, shot_size: 200, switchover_position: 200, decompression_after_screw: 200, decompression_before_screw: 200, screw_rpm: 200, back_pressure: 200, sprue_break: 200, injection_pressure: 200, injection_time: 200, screwback_time: 200, cushion: 200, cooling_time: 200, cycle_time: 200, clamping_force: 200, technicians_rating: 5, technicians_comments: "Good")
Setting.create(tool_id: 2, machine_id: 1, technician_id: 1, shot_weight: 50, sprue_weight: 10, nozzle_temp: 150, zone1_temp: 180, zone2_temp: 160, zone3_temp: 150, shot_size: 200, switchover_position: 200, decompression_after_screw: 200, decompression_before_screw: 200, screw_rpm: 200, back_pressure: 200, sprue_break: 200, injection_pressure: 200, injection_time: 200, screwback_time: 200, cushion: 200, cooling_time: 200, cycle_time: 200, clamping_force: 200, technicians_rating: 5, technicians_comments: "Good")
Setting.create(tool_id: 3, machine_id: 1, technician_id: 3, shot_weight: 50, sprue_weight: 10, nozzle_temp: 150, zone1_temp: 180, zone2_temp: 160, zone3_temp: 150, shot_size: 200, switchover_position: 200, decompression_after_screw: 200, decompression_before_screw: 200, screw_rpm: 200, back_pressure: 200, sprue_break: 200, injection_pressure: 200, injection_time: 200, screwback_time: 200, cushion: 200, cooling_time: 200, cycle_time: 200, clamping_force: 200, technicians_rating: 5, technicians_comments: "Good")
Setting.create(tool_id: 4, machine_id: 1, technician_id: 4, shot_weight: 50, sprue_weight: 10, nozzle_temp: 150, zone1_temp: 180, zone2_temp: 160, zone3_temp: 150, shot_size: 200, switchover_position: 200, decompression_after_screw: 200, decompression_before_screw: 200, screw_rpm: 200, back_pressure: 200, sprue_break: 200, injection_pressure: 200, injection_time: 200, screwback_time: 200, cushion: 200, cooling_time: 200, cycle_time: 200, clamping_force: 200, technicians_rating: 5, technicians_comments: "Good")
