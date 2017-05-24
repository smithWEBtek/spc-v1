namespace :db do
  desc "Import csv files"
  task import_csv_files: :environment do 
    filename = File.join Rails.root, "./lib/assets/teachers.csv"
    CSV.foreach(filename, headers: true) do |row|
      company, about, contact, email, phone, city, state, website = row
      teacher_hash = {company: row[0], about: row[1], contact: row[2], email: row[3], phone: row[4], city: row[5], state: row[6], website: row[7]}
      if !Teacher.find_by(contact: row[2])
        teacher = Teacher.create(teacher_hash)
        puts Teacher.last.contact
      end
    end
  end
end