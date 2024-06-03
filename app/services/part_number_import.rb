require 'csv'

class PartNumberImport
  def initialize(site)
    @csv_file_path = 'import_data/part_numbers/GPH/articles_20240603.csv'
    @site = site
  end

  def import_parts
    CSV.foreach(@csv_file_path, headers: true, header_converters: :symbol) do |row|
      if row[:group_number] == 'AG-00003'
        puts row[:group_number]
        part = Part.new
        part.part_number = row[:part_no]
        part.description = row[:part_description]
        part.group_code = row[:group_number]
        part.group_title = row[:group_name]
        part.site_id = @site.id

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

# Usage example:
# importer = PartNumberImport.new('/path/to/your/csv/file.csv')
# importer.import_parts
