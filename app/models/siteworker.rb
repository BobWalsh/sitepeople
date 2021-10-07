# == Schema Information
#
# Table name: siteworkers
#
#  id                 :integer          not null, primary key
#  person_first_name  :string
#  person_middle_name :string
#  person_last_name   :string
#  person_role        :text
#  person_number      :string
#  person_email       :string
#  person_telephone   :string
#  person_site_number :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Siteworker < ApplicationRecord
   
end
