class DaySerializer < ActiveModel::Serializer
  attributes :id, :date, :content, :image_video
  
end
