class Pandit < ActiveRecord::Base
  belongs_to :user
    searchable do
      #searching on particular fields
       string :deals
       string :city
       string :state
     end
   end


