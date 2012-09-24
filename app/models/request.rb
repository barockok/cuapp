class Request < ActiveRecord::Base
  attr_accessible :archive, :confirm_action, :description, :refuse_action, :user_id
  
end
