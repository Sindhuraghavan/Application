class Post < ActiveRecord::Base
  (validates :Item, presence: true)
  (validates :Type, presence: true)
  (validates :Category, presence: true)
  (validates :Price, presence: true,numericality: true)
  (validates :Description, presence: true)

  
  has_attached_file :photo



def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |post|
      csv << post.attributes.values_at(*column_names)
    end
  end
end


  end
  