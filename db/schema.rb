# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_25_023503) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "locale"
    t.index ["record_type", "record_id", "name", "locale"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "order_no", default: 0, null: false
    t.string "name", default: "", null: false
    t.string "complete_address", default: "", null: false
    t.string "phone1", default: "", null: false
    t.string "phone2", default: "", null: false
    t.string "fax", default: "", null: false
    t.string "email1", default: "", null: false
    t.string "email2", default: "", null: false
    t.string "longitude", default: "", null: false
    t.string "latitude", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "full_name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role_id", default: 0, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
  end

  create_table "appointments", force: :cascade do |t|
    t.string "full_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "message", default: "", null: false
    t.integer "doctor_id", default: 0, null: false
    t.date "session_date", null: false
    t.string "session_time", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "archive_types", force: :cascade do |t|
    t.jsonb "name", default: {}
  end

  create_table "archives", force: :cascade do |t|
    t.jsonb "title", default: {}
    t.jsonb "short_description", default: {}
    t.bigint "archive_type_id"
    t.datetime "published_date"
    t.integer "status", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "private", default: 0
    t.integer "read_only", default: 0
    t.index ["archive_type_id"], name: "index_archives_on_archive_type_id"
    t.index ["title"], name: "index_archives_on_title", unique: true
  end

  create_table "articles", force: :cascade do |t|
    t.jsonb "title", default: {}
    t.jsonb "short_description", default: {}
    t.bigint "category_id"
    t.datetime "published_date"
    t.integer "status", default: 1, null: false
    t.string "video_url", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "slug", default: {}
    t.jsonb "meta_title", default: {}
    t.jsonb "meta_description", default: {}
    t.index ["category_id"], name: "index_articles_on_category_id"
    t.index ["slug"], name: "index_articles_on_slug", unique: true
    t.index ["title"], name: "index_articles_on_title", unique: true
  end

  create_table "banner_sections", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "style", default: 0, null: false
    t.integer "size", default: 0, null: false
  end

  create_table "banners", force: :cascade do |t|
    t.integer "order_no", default: 0, null: false
    t.jsonb "title", default: {}
    t.jsonb "description", default: {}
    t.bigint "banner_section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "orientation"
    t.index ["banner_section_id"], name: "index_banners_on_banner_section_id"
  end

  create_table "categories", force: :cascade do |t|
    t.jsonb "name", default: {}
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "subject", default: "", null: false
    t.text "message", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "slug", default: "", null: false
    t.string "str_no", default: "", null: false
    t.string "profesional_name", default: "", null: false
    t.string "full_name", default: "", null: false
    t.string "title", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "alumni", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["full_name"], name: "index_doctors_on_full_name", unique: true
    t.index ["slug"], name: "index_doctors_on_slug", unique: true
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "slug", default: "", null: false
    t.jsonb "headline", default: {}
    t.jsonb "description", default: {}
    t.jsonb "description1", default: {}
    t.jsonb "description2", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_facilities_on_name", unique: true
    t.index ["slug"], name: "index_facilities_on_slug", unique: true
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "slug", default: "", null: false
    t.jsonb "headline", default: {}
    t.jsonb "description", default: {}
    t.jsonb "description1", default: {}
    t.jsonb "description2", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_institutions_on_name", unique: true
    t.index ["slug"], name: "index_institutions_on_slug", unique: true
  end

  create_table "link_buttons", force: :cascade do |t|
    t.string "linkable_type", null: false
    t.bigint "linkable_id", null: false
    t.string "objectable_type"
    t.bigint "objectable_id"
    t.integer "route_category", default: 0, null: false
    t.string "link_text", default: "", null: false
    t.string "link_url", default: "", null: false
    t.string "anchor", default: "", null: false
    t.integer "open_new_tab", default: 0, null: false
    t.index ["linkable_type", "linkable_id"], name: "index_link_buttons_on_linkable"
    t.index ["objectable_type", "objectable_id"], name: "index_link_buttons_on_objectable"
  end

  create_table "menus", force: :cascade do |t|
    t.integer "section", default: 0, null: false
    t.jsonb "data", default: {}
  end

  create_table "pages", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.string "slug", default: "", null: false
    t.datetime "published_date"
    t.integer "status", default: 1, null: false
    t.bigint "banner_section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "meta_title", default: {}
    t.jsonb "meta_description", default: {}
    t.index ["banner_section_id"], name: "index_pages_on_banner_section_id"
    t.index ["slug"], name: "index_pages_on_slug", unique: true
    t.index ["title"], name: "index_pages_on_title", unique: true
  end

  create_table "questions", force: :cascade do |t|
    t.jsonb "question", default: {}
    t.jsonb "answer", default: {}
    t.jsonb "category_name", default: {}
  end

  create_table "report_types", force: :cascade do |t|
    t.jsonb "name", default: {}
  end

  create_table "reports", force: :cascade do |t|
    t.jsonb "title", default: {}
    t.jsonb "short_description", default: {}
    t.bigint "report_type_id"
    t.datetime "published_date"
    t.integer "status", default: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "private", default: 0
    t.integer "read_only", default: 0
    t.index ["report_type_id"], name: "index_reports_on_report_type_id"
    t.index ["title"], name: "index_reports_on_title", unique: true
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "description", default: "", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "doctor_id", default: 0, null: false
    t.integer "day_code", default: 0, null: false
    t.string "day_name", default: "", null: false
    t.string "start_time", default: "06:00", null: false
    t.string "end_time", default: "22:00", null: false
    t.index ["doctor_id"], name: "index_schedules_on_doctor_id"
  end

  create_table "sections", force: :cascade do |t|
    t.bigint "page_id"
    t.bigint "snippet_id"
    t.string "bg_color", default: "", null: false
    t.string "css_class", default: "", null: false
    t.integer "order_no", default: 0, null: false
    t.integer "hidden", default: 0, null: false
    t.index ["page_id"], name: "index_sections_on_page_id"
    t.index ["snippet_id"], name: "index_sections_on_snippet_id"
  end

  create_table "settings", force: :cascade do |t|
    t.string "admin_contact", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "snippets", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.jsonb "title", default: {}
    t.jsonb "caption", default: {}
    t.jsonb "short_description", default: {}
    t.jsonb "description", default: {}
    t.string "title_tag", default: "", null: false
    t.string "text_color", default: "", null: false
    t.string "template", default: "", null: false
    t.string "bg_color", default: "", null: false
    t.string "css_class", default: "", null: false
    t.string "css_title", default: "", null: false
    t.string "css_desc", default: "", null: false
    t.string "orientation"
    t.string "video_url", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
    t.index ["name"], name: "index_snippets_on_name", unique: true
  end

  create_table "specialists", force: :cascade do |t|
    t.jsonb "name", default: {}
    t.string "slug", default: "", null: false
    t.jsonb "headline", default: {}
    t.jsonb "description", default: {}
    t.index ["name"], name: "index_specialists_on_name", unique: true
    t.index ["slug"], name: "index_specialists_on_slug", unique: true
  end

  create_table "specialities", force: :cascade do |t|
    t.bigint "doctor_id"
    t.bigint "specialist_id"
    t.index ["doctor_id"], name: "index_specialities_on_doctor_id"
    t.index ["specialist_id"], name: "index_specialities_on_specialist_id"
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "full_name", default: "", null: false
    t.string "comment", default: "", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
