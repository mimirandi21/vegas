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
    TSV.parse_file(food_path).each do |line|
        begin
            Food.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    destinations_file = 'destinations.tsv'
    destinations_path = File.join(TSV_ROOT, destinations_file)
    TSV.parse_file(destinations_path).each do |line|
        begin
            Destination.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    transportation_file = 'transportation.tsv'
    transportation_path = File.join(TSV_ROOT, transportation_file)
    TSV.parse_file(transportation_path).each do |line|
        begin
            Transportation.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    category_file = 'categories.tsv'
    category_path = File.join(TSV_ROOT, category_file)
    TSV.parse_file(category_path).each do |line|
        begin
            Category.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    location_file = 'locations.tsv'
    location_path = File.join(TSV_ROOT, location_file)
    TSV.parse_file(location_path).each do |line|
        begin
            Location.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    special_file = 'specials.tsv'
    special_path = File.join(TSV_ROOT, special_file)
    TSV.parse_file(special_path).each do |line|
        begin
            Special.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    recommendation_file = 'recommendations.tsv'
    recommendation_path = File.join(TSV_ROOT, recommendation_file)
    TSV.parse_file(recommendation_path).each do |line|
        begin
            Recommendation.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    note_file = 'notes.tsv'
    note_path = File.join(TSV_ROOT, note_file)
    TSV.parse_file(note_path).each do |line|
        begin
            Note.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    fcat_file = 'food_categories.tsv'
    fcat_path = File.join(TSV_ROOT, fcat_file)
    TSV.parse_file(fcat_path).each do |line|
        begin
            FoodCategory.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    floc_file = 'food_locations.tsv'
    floc_path = File.join(TSV_ROOT, floc_file)
    TSV.parse_file(floc_path).each do |line|
        begin
            FoodLocation.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    fnote_file = 'food_notes.tsv'
    fnote_path = File.join(TSV_ROOT, fnote_file)
    TSV.parse_file(fnote_path).each do |line|
        begin
            FoodNote.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    frec_file = 'food_recommendations.tsv'
    frec_path = File.join(TSV_ROOT, frec_file)
    TSV.parse_file(frec_path).each do |line|
        begin
            FoodRecommendation.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end

    fspec_file = 'food_specials.tsv'
    fspec_path = File.join(TSV_ROOT, fspec_file)
    TSV.parse_file(fspec_path).each do |line|
        begin
            FoodSpecial.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    trcat_file = 'trans_categories.tsv'
    trcat_path = File.join(TSV_ROOT, trcat_file)
    TSV.parse_file(trcat_path).each do |line|
        begin
            TransCategory.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    trloc_file = 'trans_locations.tsv'
    trloc_path = File.join(TSV_ROOT, trloc_file)
    TSV.parse_file(trloc_path).each do |line|
        begin
            TransLocation.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    trnote_file = 'trans_notes.tsv'
    trnote_path = File.join(TSV_ROOT, trnote_file)
    TSV.parse_file(trnote_path).each do |line|
        begin
            TransNote.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    dcat_file = 'dest_categories.tsv'
    dcat_path = File.join(TSV_ROOT, dcat_file)
    TSV.parse_file(dcat_path).each do |line|
        begin
            DestCategory.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    dloc_file = 'dest_locations.tsv'
    dloc_path = File.join(TSV_ROOT, dloc_file)
    TSV.parse_file(dloc_path).each do |line|
        begin
            DestLocation.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    dnote_file = 'dest_notes.tsv'
    dnote_path = File.join(TSV_ROOT, dnote_file)
    TSV.parse_file(dnote_path).each do |line|
        begin
            DestNote.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    drec_file = 'dest_recommendations.tsv'
    drec_path = File.join(TSV_ROOT, drec_file)
    TSV.parse_file(drec_path).each do |line|
        begin
            DestRecommendation.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    dspec_file = 'dest_specials.tsv'
    dspec_path = File.join(TSV_ROOT, dspec_file)
    TSV.parse_file(dspec_path).each do |line|
        begin
            DestSpecial.create(line.to_h)
        rescue CSV::MalformedCSVError => er
            puts er.message
            next
        end
    end

    
        
    end

    