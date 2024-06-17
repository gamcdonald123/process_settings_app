require 'csv'

class PartNumberImport
  def initialize()
    @file_paths = ['import_data/part_numbers/GNW/gnw_articles.csv', 'import_data/part_numbers/GPH/gph_articles.csv', 'import_data/part_numbers/GFC/gfc_articles.csv']
    @sites = [Site.find(3), Site.find(2), Site.find(1)]
  end

  def import_parts
    @sites.each_with_index do |site, index|
      CSV.foreach(@file_path[index], headers: true, header_converters: :symbol) do |row|
        if row[:group_number] == 'AG-00026' || row[:group_number] == 'AG-00014' || row[:group_number] == 'AG-00003' || row[:group_number] == 'AG-00006'
          part = Part.new
          part.part_number = row[:part_no]
          part.description = row[:part_description]
          part.group_code = row[:group_number]
          part.group_title = row[:group_name]
          part.site_id = site.id

          if part.save
            puts "Part number #{part.part_number} saved"
          else
            puts "Error saving part number #{part.part_number}"
            puts part.errors.full_messages
          end

          # puts "Part number #{part.part_number} imported"
        end
      end
    end
  end
end

# Usage example:
# importer = PartNumberImport.new('/path/to/your/csv/file.csv')
# importer.import_parts
