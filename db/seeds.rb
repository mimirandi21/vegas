# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
require 'tsv'

    TSV_ROOT = Rails.root.join('db', 'seeds', 'tsv')

    food_file = 'foodanddrink.tsv'
    food_path = File.join(TSV_ROOT, food_file)
    category_file = 'categories.tsv'
    category_path = File.join(TSV_ROOT, category_file)
    location_file = 'locations.tsv'
    location_path = File.join(TSV_ROOT, location_file)
    special_file = 'specials.tsv'
    special_path = File.join(TSV_ROOT, special_file)
    recommendation_file = 'recommendations.tsv'
    recommendation_path = File.join(TSV_ROOT, recommendation_file)
    note_file = 'notes.tsv'
    note_path = File.join(TSV_ROOT, note_file)
    fcat_file = 'food_categories.tsv'
    fcat_path = File.join(TSV_ROOT, fcat_file)
    floc_file = 'food_locations.tsv'
    floc_path = File.join(TSV_ROOT, floc_file)
    fnote_file = 'food_notes.tsv'
    fnote_path = File.join(TSV_ROOT, fnote_file)
    frec_file = 'food_recommendations.tsv'
    frec_path = File.join(TSV_ROOT, frec_file)
    fspec_file = 'food_specials.tsv'
    fspec_path = File.join(TSV_ROOT, fspec_file)

    TSV.parse_file(food_path).each do |line|
        begin
            Food.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        
        end
    end

    TSV.parse_file(category_path).each do |line|
        begin
            Category.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        
        end
    end

    TSV.parse_file(location_path).each do |line|
        begin
            Location.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        
        end
    end

    TSV.parse_file(note_path).each do |line|
        begin
            Note.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        
        end
    end

    TSV.parse_file(special_path).each do |line|
        begin
            Special.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        
        end
    end

    TSV.parse_file(recommendation_path).each do |line|
        begin
            Recommendation.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        
        end
    end

    TSV.parse_file(fcat_path).each do |line|
        begin
            FoodCategory.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        
        end
    end

    TSV.parse_file(floc_path).each do |line|
        begin
            FoodLocation.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        
        end
    end

    TSV.parse_file(fnote_path).each do |line|
        begin
            FoodNote.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        
        end
    end

    TSV.parse_file(fspec_path).each do |line|
        begin
            FoodSpecial.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        
        end
    end

    TSV.parse_file(frec_path).each do |line|
        begin
            FoodRecommendation.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        
        end
    end

    