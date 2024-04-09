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
