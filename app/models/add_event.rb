class AddEvent < ActiveRecord::Base
  attr_accessible :content, :event_date, :event_name
end
