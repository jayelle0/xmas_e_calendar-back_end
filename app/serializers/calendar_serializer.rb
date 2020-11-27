class CalendarSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :days 
end
