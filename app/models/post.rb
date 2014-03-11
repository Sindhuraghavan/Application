class Post < ActiveRecord::Base
  (validates :Item, presence: true)
  (validates :Type, presence: true)
  (validates :Category, presence: true)
  (validates :Price, presence: true,numericality: true)
  (validates :Description, presence: true)
  end
  