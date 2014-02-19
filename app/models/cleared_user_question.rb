class ClearedUserQuestion < ActiveRecord::Base
  belongs_to :eventuser
  belongs_to :eventquestion
end
