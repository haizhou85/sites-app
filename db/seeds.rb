# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
site_list = JSON.parse(File.read('app/assets/data/sites.json'))
site_use_list = JSON.parse(File.read('app/assets/data/site_uses.json'))
use_type_list = JSON.parse(File.read('app/assets/data/use_types.json'))

site_list.each do |site|
    Site.create(site)
end

use_type_list.each do |use_type|
    UseType.create(use_type)
end

site_use_list.each do |site_use|
    SiteUse.create(site_use)
end