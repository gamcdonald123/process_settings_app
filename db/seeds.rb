Setting.destroy_all
Tool.destroy_all
Machine.destroy_all
Technician.destroy_all
Site.destroy_all

Site.create(site_name: "GFC")
Site.create(site_name: "GPH")
Site.create(site_name: "GNW")