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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161111062429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "document_data", primary_key: "document_id", id: :integer, default: -> { "nextval('document_data_file_id_seq'::regclass)" }, force: :cascade do |t|
    t.binary "contents"
  end

  create_table "documents", force: :cascade do |t|
    t.string   "filename"
    t.integer  "time_available"
    t.boolean  "file_active"
    t.string   "content_type"
    t.string   "file_url"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "password_hash"
    t.index ["file_url"], name: "index_documents_on_file_url", unique: true, using: :btree
  end

  add_foreign_key "document_data", "documents"
end
