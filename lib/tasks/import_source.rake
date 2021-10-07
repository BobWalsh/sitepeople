require 'csv'
namespace :import do
    desc "import sites and people from source.csv"
    task sites: :environment do
        filename2= File.join Rails.root, "source.csv"
        CSV.foreach(filename2, headers: true, :encoding => "ISO-8859-1") do |row|
            person = Siteworker.where(person_number: row["Person Number"]).first_or_create
            person.person_number = row["Person Number"]
            person.person_first_name = row["Person First Name"]
            person.person_middle_name = row["Person Middle Name"]
            person.person_last_name = row["Person Surname"]
            person.person_role = row["Person Role"]
            person.person_telephone = row["Person Telephone"]
            person.person_email = row["Person Email"]
            person.person_site_number = row["Site Number"]
            person.save
            p person.id, row["Person Number"].to_i
        end
        
        filename= File.join Rails.root, "source.csv"
        CSV.foreach(filename, headers: true, :encoding => "ISO-8859-1") do |row|
            site = Site.where(site_number: row["Site Number"]).first_or_create
            site.facility_name = row["Facility Name"]
            site.site_address = row["Site Address"]
            site.site_city = row["Site City"]
            site.site_state_or_county = row["Site State/County"]
            site.site_postal_code = row["Site Zip"]
            site.site_country = row["Country"]
            site.save
            
        end
        
    end
end
