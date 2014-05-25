# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140525125313) do

  create_table "refinery_andhras", :force => true do |t|
    t.string   "headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "refinery_blogs", :force => true do |t|
    t.string   "headline"
    t.string   "url"
    t.string   "tags"
    t.string   "source"
    t.integer  "image_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_ears", :force => true do |t|
    t.string   "headline"
    t.string   "link"
    t.integer  "photo_id"
    t.string   "author"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_editors_picks", :force => true do |t|
    t.string   "headline"
    t.string   "link"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_election2014s_election_2014s", :force => true do |t|
    t.string   "headline"
    t.string   "url"
    t.string   "tags"
    t.string   "source"
    t.integer  "image_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

# Could not dump table "refinery_elections" because of following StandardError
#   Unknown type 'image' for column 'image'

  create_table "refinery_elephants", :force => true do |t|
    t.string   "headline"
    t.string   "link"
    t.integer  "photo_id"
    t.string   "author"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_entertainments", :force => true do |t|
    t.string   "Main_headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "refinery_finances", :force => true do |t|
    t.string   "Main_headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "refinery_headlines", :force => true do |t|
    t.string   "main_headline"
    t.integer  "main_photo_id"
    t.string   "main_blurb"
    t.string   "main_link"
    t.string   "main_story_link_headline_1"
    t.string   "main_story_link_1"
    t.string   "main_story_link_source_1"
    t.string   "main_story_link_headline_2"
    t.string   "main_story_link_2"
    t.string   "main_story_link_source_2"
    t.string   "main_story_link_headline_3"
    t.string   "main_story_link_3"
    t.string   "main_story_link_source_3"
    t.string   "main_story_link_headline_4"
    t.string   "main_story_link_4"
    t.string   "main_story_link_source_4"
    t.integer  "position"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "refinery_images", :force => true do |t|
    t.string   "image_mime_type"
    t.string   "image_name"
    t.integer  "image_size"
    t.integer  "image_width"
    t.integer  "image_height"
    t.string   "image_uid"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "refinery_karnatakas", :force => true do |t|
    t.string   "headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "refinery_keralas", :force => true do |t|
    t.string   "headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "refinery_landing_pages", :force => true do |t|
    t.string   "Homepage_Headline"
    t.integer  "position"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "refinery_latests", :force => true do |t|
    t.string   "headline"
    t.string   "link"
    t.integer  "photo_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_mainpages", :force => true do |t|
    t.string   "main_headline"
    t.integer  "main_photo_id"
    t.string   "main_blurb"
    t.string   "main_link"
    t.string   "main_story_link_headline_1"
    t.string   "main_story_link_1"
    t.string   "main_story_link_source_1"
    t.string   "main_story_link_headline_2"
    t.string   "main_story_link_2"
    t.string   "main_story_link_source_2"
    t.string   "main_story_link_headline_3"
    t.string   "main_story_link_3"
    t.string   "main_story_link_source_3"
    t.string   "main_story_link_headline_4"
    t.string   "main_story_link_4"
    t.string   "main_story_link_source_4"
    t.string   "main_headline_2"
    t.integer  "main_photo_2_id"
    t.string   "main_blurb_2"
    t.string   "main_link_2"
    t.integer  "latest_photo_1_id"
    t.string   "latest_headline_1"
    t.string   "latest_link_1"
    t.integer  "latest_photo_2_id"
    t.string   "latest_headline_2"
    t.string   "latest_link_2"
    t.integer  "latest_photo_3_id"
    t.string   "latest_headline_3"
    t.string   "latest_link_3"
    t.integer  "latest_photo_4_id"
    t.string   "latest_headline_4"
    t.string   "latest_link_4"
    t.integer  "politics_photo_id"
    t.string   "politics_headline"
    t.string   "politics_link"
    t.string   "politics_headline_1"
    t.string   "politics_link_1"
    t.string   "politics_headline_2"
    t.string   "politics_link_2"
    t.string   "politics_headline_3"
    t.string   "politics_link_3"
    t.integer  "news_photo_id"
    t.string   "news_headline"
    t.string   "news_link"
    t.string   "news_headline_1"
    t.string   "news_link_1"
    t.string   "news_headline_2"
    t.string   "news_link_2"
    t.string   "news_headline_3"
    t.string   "news_link_3"
    t.integer  "sports_photo_id"
    t.string   "sports_headline"
    t.string   "sports_link"
    t.string   "sports_headline_1"
    t.string   "sports_link_1"
    t.string   "sports_headline_2"
    t.string   "sports_link_2"
    t.string   "sports_headline_3"
    t.string   "sports_link_3"
    t.integer  "entertainment_photo_id"
    t.string   "entertainment_headline"
    t.string   "entertainment_link"
    t.string   "entertainment_headline_1"
    t.string   "entertainment_link_1"
    t.string   "entertainment_headline_2"
    t.string   "entertainment_link_2"
    t.string   "entertainment_headline_3"
    t.string   "entertainment_link_3"
    t.integer  "technology_photo_id"
    t.string   "technology_headline"
    t.string   "technology_link"
    t.string   "technology_headline_1"
    t.string   "technology_link_1"
    t.string   "technology_headline_2"
    t.string   "technology_link_2"
    t.string   "technology_headline_3"
    t.string   "technology_link_3"
    t.integer  "money_photo_id"
    t.string   "money_headline"
    t.string   "money_link"
    t.string   "money_headline_1"
    t.string   "money_link_1"
    t.string   "money_headline_2"
    t.string   "money_link_2"
    t.string   "money_headline_3"
    t.string   "money_link_3"
    t.integer  "world_photo_left_id"
    t.string   "world_headline_left"
    t.string   "world_link_left"
    t.string   "world_headline_1_left"
    t.string   "world_link_1_left"
    t.string   "world_headline_2_left"
    t.string   "world_link_2_left"
    t.string   "world_headline_3_left"
    t.string   "world_link_3_left"
    t.integer  "world_photo_right_id"
    t.string   "world_headline_right"
    t.string   "world_link_right"
    t.string   "world_headline_1_right"
    t.string   "world_link_1_right"
    t.string   "world_headline_2_right"
    t.string   "world_link_2_right"
    t.string   "world_headline_3_right"
    t.string   "world_link_3_right"
    t.integer  "southern_minute_photo_1_id"
    t.string   "southern_minute_headline_1"
    t.string   "southern_minute_link_1"
    t.integer  "southern_minute_photo_2_id"
    t.string   "southern_minute_headline_2"
    t.string   "southern_minute_link_2"
    t.integer  "southern_minute_photo_3_id"
    t.string   "southern_minute_headline_3"
    t.string   "southern_minute_link_3"
    t.integer  "southern_minute_photo_4_id"
    t.string   "southern_minute_headline_4"
    t.string   "southern_minute_link_4"
    t.integer  "columnist_caricature_1_id"
    t.string   "columnist_headline_1"
    t.string   "columnist_link_1"
    t.string   "columnist_name_1"
    t.integer  "columnist_caricature_2_id"
    t.string   "columnist_headline_2"
    t.string   "columnist_link_2"
    t.string   "columnist_name_2"
    t.integer  "columnist_caricature_3_id"
    t.string   "columnist_headline_3"
    t.string   "columnist_link_3"
    t.string   "columnist_name_3"
    t.integer  "columnist_caricature_4_id"
    t.string   "columnist_headline_4"
    t.string   "columnist_link_4"
    t.string   "columnist_name_4"
    t.integer  "columnist_caricature_5_id"
    t.string   "columnist_headline_5"
    t.string   "columnist_link_5"
    t.string   "columnist_name_5"
    t.integer  "editorial_caricature_1_id"
    t.string   "editorial_heading_1"
    t.string   "editorial_author_1"
    t.string   "editorial_link_1"
    t.integer  "editorial_caricature_2_id"
    t.string   "editorial_heading_2"
    t.string   "editorial_author_2"
    t.string   "editorial_link_2"
    t.integer  "voices_1_id"
    t.string   "voices_headline_1"
    t.string   "voices_link_1"
    t.integer  "voices_photo_2_id"
    t.string   "voices_headline_2"
    t.string   "voices_link_2"
    t.integer  "random_photo_1_id"
    t.string   "random_headline_1"
    t.string   "random_link_1"
    t.integer  "random_photo_2_id"
    t.string   "random_headline_2"
    t.string   "random_link_2"
    t.integer  "random_photo_3_id"
    t.string   "random_headline_3"
    t.string   "random_link_3"
    t.integer  "random_photo_4_id"
    t.string   "random_headline_4"
    t.string   "random_link_4"
    t.string   "not_to_miss_headline_1"
    t.string   "not_to_miss_link_1"
    t.string   "not_to_miss_headline_2"
    t.string   "not_to_miss_link_2"
    t.string   "not_to_miss_headline_3"
    t.string   "not_to_miss_link_3"
    t.string   "not_to_miss_headline_4"
    t.string   "not_to_miss_link_4"
    t.integer  "position"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "refinery_news", :force => true do |t|
    t.string   "Main_headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "refinery_news_sections", :force => true do |t|
    t.string   "Main_headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "refinery_opinion_corners", :force => true do |t|
    t.string   "headline"
    t.string   "link"
    t.integer  "photo_id"
    t.string   "author"
    t.string   "headline2"
    t.string   "link2"
    t.string   "headline3"
    t.string   "link3"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_opinion_mainpages", :force => true do |t|
    t.string   "headline"
    t.string   "url"
    t.integer  "image_id"
    t.string   "author"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_opinions", :force => true do |t|
    t.string   "headline"
    t.string   "url"
    t.integer  "image_id"
    t.string   "headline2"
    t.string   "url2"
    t.string   "headline3"
    t.string   "url3"
    t.string   "headline4"
    t.string   "url4"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_page_part_translations", :force => true do |t|
    t.integer  "refinery_page_part_id"
    t.string   "locale",                :null => false
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.text     "body"
  end

  add_index "refinery_page_part_translations", ["locale"], :name => "index_refinery_page_part_translations_on_locale"
  add_index "refinery_page_part_translations", ["refinery_page_part_id"], :name => "index_refinery_page_part_translations_on_refinery_page_part_id"

  create_table "refinery_page_parts", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "title"
    t.text     "body"
    t.integer  "position"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "refinery_page_parts", ["id"], :name => "index_refinery_page_parts_on_id"
  add_index "refinery_page_parts", ["refinery_page_id"], :name => "index_refinery_page_parts_on_refinery_page_id"

  create_table "refinery_page_translations", :force => true do |t|
    t.integer  "refinery_page_id"
    t.string   "locale",           :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "title"
    t.string   "custom_slug"
    t.string   "menu_title"
    t.string   "slug"
  end

  add_index "refinery_page_translations", ["locale"], :name => "index_refinery_page_translations_on_locale"
  add_index "refinery_page_translations", ["refinery_page_id"], :name => "index_refinery_page_translations_on_refinery_page_id"

  create_table "refinery_pages", :force => true do |t|
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.boolean  "show_in_menu",        :default => true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           :default => true
    t.boolean  "draft",               :default => false
    t.boolean  "skip_to_first_child", :default => false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "view_template"
    t.string   "layout_template"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "refinery_pages", ["depth"], :name => "index_refinery_pages_on_depth"
  add_index "refinery_pages", ["id"], :name => "index_refinery_pages_on_id"
  add_index "refinery_pages", ["lft"], :name => "index_refinery_pages_on_lft"
  add_index "refinery_pages", ["parent_id"], :name => "index_refinery_pages_on_parent_id"
  add_index "refinery_pages", ["rgt"], :name => "index_refinery_pages_on_rgt"

  create_table "refinery_politics", :force => true do |t|
    t.string   "Main_headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "refinery_randoms", :force => true do |t|
    t.string   "headline"
    t.string   "url"
    t.string   "tags"
    t.string   "source"
    t.integer  "image_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_redirects", :force => true do |t|
    t.string   "Homepage_Headline"
    t.string   "Mainpage_url"
    t.integer  "position"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "refinery_resources", :force => true do |t|
    t.string   "file_mime_type"
    t.string   "file_name"
    t.integer  "file_size"
    t.string   "file_uid"
    t.string   "file_ext"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "refinery_roles", :force => true do |t|
    t.string "title"
  end

  create_table "refinery_roles_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "refinery_roles_users", ["role_id", "user_id"], :name => "index_refinery_roles_users_on_role_id_and_user_id"
  add_index "refinery_roles_users", ["user_id", "role_id"], :name => "index_refinery_roles_users_on_user_id_and_role_id"

  create_table "refinery_sections", :force => true do |t|
    t.string   "Topic"
    t.string   "headline_1"
    t.integer  "image_1_id"
    t.string   "link_1"
    t.string   "news_1_headline_1"
    t.string   "news_1_link_1"
    t.string   "news_1_headline_2"
    t.string   "news_1_link_2"
    t.string   "news_1_headline_3"
    t.string   "news_1_link_3"
    t.string   "news_1_headline_4"
    t.string   "news_1_link_4"
    t.string   "news_1_headline_5"
    t.string   "news_1_link_5"
    t.string   "rank_1"
    t.string   "headline_2"
    t.integer  "image_2_id"
    t.string   "link_2"
    t.string   "news_2_headline_1"
    t.string   "news_2_link_1"
    t.string   "news_2_headline_2"
    t.string   "news_2_link_2"
    t.string   "news_2_headline_3"
    t.string   "news_2_link_3"
    t.string   "news_2_headline_4"
    t.string   "news_2_link_4"
    t.string   "news_2_headline_5"
    t.string   "news_2_link_5"
    t.string   "rank_2"
    t.string   "headline_3"
    t.integer  "image_3_id"
    t.string   "link_3"
    t.string   "news_3_headline_1"
    t.string   "news_3_link_1"
    t.string   "news_3_headline_2"
    t.string   "news_3_link_2"
    t.string   "news_3_headline_3"
    t.string   "news_3_link_3"
    t.string   "news_3_headline_4"
    t.string   "news_3_link_4"
    t.string   "news_3_headline_5"
    t.string   "news_3_link_5"
    t.string   "rank_3"
    t.string   "headline_4"
    t.integer  "image_4_id"
    t.string   "link_4"
    t.string   "news_4_headline_1"
    t.string   "news_4_link_1"
    t.string   "news_4_headline_2"
    t.string   "news_4_link_2"
    t.string   "news_4_headline_3"
    t.string   "news_4_link_3"
    t.string   "news_4_headline_4"
    t.string   "news_4_link_4"
    t.string   "news_4_headline_5"
    t.string   "news_4_link_5"
    t.string   "rank_4"
    t.string   "headline_5"
    t.integer  "image_5_id"
    t.string   "link_5"
    t.string   "rank_5"
    t.string   "headline_6"
    t.integer  "image_6_id"
    t.string   "link_6"
    t.string   "rank_6"
    t.string   "headline_7"
    t.integer  "image_7_id"
    t.string   "link_7"
    t.string   "rank_7"
    t.string   "headline_8"
    t.integer  "image_8_id"
    t.string   "link_8"
    t.string   "rank_8"
    t.integer  "position"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "refinery_side_headlines", :force => true do |t|
    t.string   "headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "refinery_southern_minutes", :force => true do |t|
    t.string   "headline"
    t.string   "link"
    t.integer  "photo_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_specials", :force => true do |t|
    t.string   "headline"
    t.string   "url"
    t.string   "tags"
    t.string   "source"
    t.integer  "image_id"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "refinery_sports", :force => true do |t|
    t.string   "Main_headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "refinery_stories", :force => true do |t|
    t.string   "Main_headline"
    t.integer  "photo_id"
    t.string   "blurb"
    t.text     "summary"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "refinery_subsections", :force => true do |t|
    t.string   "Topic"
    t.string   "headline_1"
    t.integer  "image_1_id"
    t.string   "link_1"
    t.string   "news_1_headline_1"
    t.string   "news_1_link_1"
    t.string   "news_1_source_1"
    t.string   "news_1_headline_2"
    t.string   "news_1_link_2"
    t.string   "news_1_source_2"
    t.string   "news_1_headline_3"
    t.string   "news_1_link_3"
    t.string   "news_1_source_3"
    t.string   "news_1_headline_4"
    t.string   "news_1_link_4"
    t.string   "news_1_source_4"
    t.string   "news_1_headline_5"
    t.string   "news_1_link_5"
    t.string   "news_1_source_5"
    t.string   "rank_1"
    t.string   "headline_2"
    t.integer  "image_2_id"
    t.string   "link_2"
    t.string   "news_2_headline_1"
    t.string   "news_2_link_1"
    t.string   "news_2_source_1"
    t.string   "news_2_headline_2"
    t.string   "news_2_link_2"
    t.string   "news_2_source_2"
    t.string   "news_2_headline_3"
    t.string   "news_2_link_3"
    t.string   "news_2_source_3"
    t.string   "news_2_headline_4"
    t.string   "news_2_link_4"
    t.string   "news_2_source_4"
    t.string   "news_2_headline_5"
    t.string   "news_2_link_5"
    t.string   "rank_2"
    t.string   "headline_3"
    t.integer  "image_3_id"
    t.string   "link_3"
    t.string   "news_3_headline_1"
    t.string   "news_3_link_1"
    t.string   "news_3_source_1"
    t.string   "news_3_headline_2"
    t.string   "news_3_link_2"
    t.string   "news_3_source_2"
    t.string   "news_3_headline_3"
    t.string   "news_3_link_3"
    t.string   "news_3_source_3"
    t.string   "news_3_headline_4"
    t.string   "news_3_link_4"
    t.string   "news_3_source_4"
    t.string   "news_3_headline_5"
    t.string   "news_3_link_5"
    t.string   "news_2_source_5"
    t.string   "rank_4"
    t.string   "headline_4"
    t.integer  "image_4_id"
    t.string   "link_4"
    t.string   "news_4_headline_1"
    t.string   "news_4_link_1"
    t.string   "news_4_source_1"
    t.string   "news_4_headline_2"
    t.string   "news_4_link_2"
    t.string   "news_4_source_2"
    t.string   "news_4_headline_3"
    t.string   "news_4_link_3"
    t.string   "news_4_source_3"
    t.string   "news_4_headline_4"
    t.string   "news_4_link_4"
    t.string   "news_4_source_4"
    t.string   "news_4_headline_5"
    t.string   "news_4_link_5"
    t.string   "news_4_source_5"
    t.string   "headline_5"
    t.integer  "image_5_id"
    t.string   "link_5"
    t.string   "rank_5"
    t.string   "headline_6"
    t.integer  "image_6_id"
    t.string   "link_6"
    t.string   "rank_6"
    t.string   "headline_7"
    t.integer  "image_7_id"
    t.string   "link_7"
    t.string   "rank_7"
    t.string   "headline_8"
    t.integer  "image_8_id"
    t.string   "link_8"
    t.string   "rank_8"
    t.integer  "position"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "refinery_tamils", :force => true do |t|
    t.string   "headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "refinery_technologies", :force => true do |t|
    t.string   "Main_headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "refinery_user_plugins", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.integer "position"
  end

  add_index "refinery_user_plugins", ["name"], :name => "index_refinery_user_plugins_on_name"
  add_index "refinery_user_plugins", ["user_id", "name"], :name => "index_refinery_user_plugins_on_user_id_and_name", :unique => true

  create_table "refinery_users", :force => true do |t|
    t.string   "username",               :null => false
    t.string   "email",                  :null => false
    t.string   "encrypted_password",     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "sign_in_count"
    t.datetime "remember_created_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "slug"
  end

  add_index "refinery_users", ["id"], :name => "index_refinery_users_on_id"
  add_index "refinery_users", ["slug"], :name => "index_refinery_users_on_slug"

  create_table "refinery_worlds", :force => true do |t|
    t.string   "Main_headline"
    t.integer  "photo_id"
    t.string   "youtube"
    t.string   "image_blurb"
    t.string   "blurb"
    t.text     "summary"
    t.string   "tags"
    t.string   "headline_1"
    t.string   "link_1"
    t.string   "source_1"
    t.string   "headline_2"
    t.string   "link_2"
    t.string   "source_2"
    t.string   "headline_3"
    t.string   "link_3"
    t.string   "source_3"
    t.string   "headline_4"
    t.string   "link_4"
    t.string   "source_4"
    t.string   "headline_5"
    t.string   "link_5"
    t.string   "source_5"
    t.string   "headline_6"
    t.string   "link_6"
    t.string   "source_6"
    t.string   "headline_7"
    t.string   "link_7"
    t.string   "source_7"
    t.string   "headline_8"
    t.string   "link_8"
    t.string   "source_8"
    t.integer  "position"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "seo_meta", :force => true do |t|
    t.integer  "seo_meta_id"
    t.string   "seo_meta_type"
    t.string   "browser_title"
    t.text     "meta_description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "seo_meta", ["id"], :name => "index_seo_meta_on_id"
  add_index "seo_meta", ["seo_meta_id", "seo_meta_type"], :name => "id_type_index_on_seo_meta"

end
