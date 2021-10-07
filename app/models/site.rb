# == Schema Information
#
# Table name: sites
#
#  id                   :integer          not null, primary key
#  site_number          :integer
#  facility_name        :string
#  site_address         :string
#  site_city            :string
#  site_state_or_county :string
#  site_postal_code     :string
#  site_country         :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class Site < ApplicationRecord
    
end
