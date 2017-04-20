class Import < ApplicationRecord


  def import_csv
    csv_file = "./lib/assets/"+ self.file_name + ".csv"
    csv_text = File.read(csv_file)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      EmployeeServiceCall.create!(row.to_hash)
    end
  end
end