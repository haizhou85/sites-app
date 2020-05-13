class SiteUse < ApplicationRecord
    belongs_to :site
    belongs_to :use_type
end
