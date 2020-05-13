class Site < ApplicationRecord
    has_many :site_uses

    def total_sizes
        site_uses.sum(:size_sqft)
    end

    def primary_type
        if site_uses.any?
            UseType.find(site_uses.group(:use_type_id).order('sum_size_sqft DESC').sum(:size_sqft).first.first)
        end            
    end

    def as_json(options = {})
        super options.merge(methods: [:total_sizes, :primary_type])
    end
end
