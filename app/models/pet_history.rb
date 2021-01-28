class PetHistory < ApplicationRecord
    belongs_to :pet

    scope :history_count, -> (pet_id) {
        if self.where(pet_id: pet_id).exists?
            self.where(pet_id: pet_id).count 
        else
            0
        end
    }

    #Find all Histories for pet_id
    scope :history_list, -> (pet_id) {
        if self.where(pet_id: pet_id).exists?
            histories = self.where(pet_id: pet_id).pluck(pet_histories_id)
            i = 1
            histories.map do |hist_id|
                "<%= link_to History #{i}, (pet_pet_histories_url/#{hist_id} %>"
                i += 1
            end
        else
            "No Histories Avaible"
        end
    }


end
