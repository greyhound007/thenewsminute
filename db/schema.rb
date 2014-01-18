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

ActiveRecord::Schema.define(:version => 20140118195339) do

  create_table "refinery_homepages", :force => true do |t|
    t.string   "main_story_headline_1"
    t.integer  "main_story_photo_1_id"
    t.string   "main_story_blurb_1"
    t.string   "main_story_link_1"
    t.string   "main_story_headline_2"
    t.integer  "main_story_photo_2_id"
    t.string   "main_story_blurb_2"
    t.string   "main_story_link_2"
    t.integer  "latest_photo_1_id"
    t.string   "latest_headline_1"
    t.string   "latest_link_1"
    t.integer  "latest_photo_2_id"
    t.string   "latest_headline_2"
    t.string   "latest_link_2"
    t.integer  "latest_photo_3_id"
    t.string   "latest_headline_3"
    t.string   "latest_link_3"
    t.integer  "politics_photo_id"
    t.string   "politics_headline_1"
    t.string   "politics_link_1"
    t.string   "politics_headline_2"
    t.string   "politics_link_2"
    t.string   "politics_headline_3"
    t.string   "politics_link_3"
    t.integer  "news_photo_id"
    t.string   "news_headline_1"
    t.string   "news_link_1"
    t.string   "news_headline_2"
    t.string   "news_link_2"
    t.string   "news_headline_3"
    t.string   "news_link_3"
    t.integer  "sports_photo_id"
    t.string   "sports_headline_1"
    t.string   "sports_link_1"
    t.string   "sports_headline_2"
    t.string   "sports_link_2"
    t.string   "sports_headline_3"
    t.string   "sports_link_3"
    t.integer  "entertainment_photo_id"
    t.string   "entertainment_headline_1"
    t.string   "entertainment_link_1"
    t.string   "entertainment_headline_2"
    t.string   "entertainment_link_2"
    t.string   "entertainment_headline_3"
    t.string   "entertainment_link_3"
    t.integer  "technology_photo_id"
    t.string   "technology_headline_1"
    t.string   "technology_link_1"
    t.string   "technology_headline_2"
    t.string   "technology_link_2"
    t.string   "technology_headline_3"
    t.string   "technology_link_3"
    t.integer  "world_photo_id"
    t.string   "world_headline_1"
    t.string   "world_link_1"
    t.string   "world_headline_2"
    t.string   "world_link_2"
    t.string   "world_headline_3"
    t.string   "world_link_3"
    t.integer  "simply_south_photo_id"
    t.string   "simply_south_headline_1"
    t.string   "simply_south_link_1"
    t.string   "simply_south_headline_2"
    t.string   "simply_south_link_2"
    t.string   "simply_south_headline_3"
    t.string   "simply_south_link_3"
    t.integer  "editorial_caricature_1_id"
    t.string   "editorial_heading_1"
    t.string   "editorial_blurb_1"
    t.integer  "editorial_caricature_2_id"
    t.string   "editorial_heading_2"
    t.string   "editorial_blurb_2"
    t.integer  "whats_on_my_mind_photo_1_id"
    t.string   "whats_on_my_mind_headline_1"
    t.string   "whats_on_my_mind_link_1"
    t.integer  "whats_on_my_mind_photo_2_id"
    t.string   "whats_on_my_mind_headline_2"
    t.string   "whats_on_my_mind_link_2"
    t.integer  "odd_one_photo_id"
    t.string   "odd_one_headline"
    t.string   "odd_one_blurb"
    t.integer  "blog_we_like_cartooon_1_id"
    t.string   "blog_we_like_headline1"
    t.string   "blog_we_like_link1"
    t.integer  "blog_we_like_cartooon_2_id"
    t.string   "blog_we_like_headline2"
    t.string   "blog_we_like_link2"
    t.integer  "blog_we_like_cartooon_3_id"
    t.string   "blog_we_like_headline3"
    t.string   "blog_we_like_link3"
    t.integer  "blog_we_like_cartooon_4_id"
    t.string   "blog_we_like_headline4"
    t.string   "blog_we_like_link4"
    t.integer  "blog_we_like_cartooon_5_id"
    t.string   "blog_we_like_headline5"
    t.string   "blog_we_like_link5"
    t.integer  "position"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
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
