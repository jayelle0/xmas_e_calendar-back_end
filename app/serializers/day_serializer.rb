class DaySerializer < ActiveModel::Serializer
  attributes :id, :date, :content, :image_video
  has_one :calendar
end
