class Pet < ApplicationRecord
  has_many :pet_histories
 
  def to_s
    name
  end

  def history_count
    #TODO-implement
    pet_histories.count
  end

  def history_list
    histories_links = []
    pet_histories.pluck(:id).each_with_index do |hist_id, i|
      histories_links << "<a href='../pets/#{self.id}/pet_histories/#{hist_id}''>'History #{i+1}'</a>"
    end
    histories_links.join(", ").html_safe
  end

  def avg_weight
    #TODO-implement
    avg_data = pet_histories.pluck(:weight)
    avg_data.sum / avg_data.count
  end

  def avg_height
    #TODO-implement
    byebug
    avg_data = pet_histories.pluck(:height)
    avg_data.sum / avg_data.count
  end

  def max_weight
    #TODO-implement
    pet_histories.pluck(:weight).max
  end

  def max_height
    #TODO-implement
    pet_histories.pluck(:heigth).max
  end

end
