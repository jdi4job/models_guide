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

ActiveRecord::Schema.define(version: 20161122030545) do

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorization", id: false, force: :cascade do |t|
    t.integer "category_id", null: false
    t.integer "product_id",  null: false
    t.index ["category_id", "product_id"], name: "index_categorization_on_category_id_and_product_id"
    t.index ["product_id", "category_id"], name: "index_categorization_on_product_id_and_category_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_date"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "description"
    t.string   "part_number"
    t.integer  "user_id"
    t.decimal  "price",         precision: 5, scale: 2
    t.string   "supplier_type"
    t.integer  "supplier_id"
    t.index ["supplier_type", "supplier_id"], name: "index_products_on_supplier_type_and_supplier_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "products_users", id: false, force: :cascade do |t|
    t.integer "user_id",    null: false
    t.integer "product_id", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "publisher_id"
    t.string   "publisher_type"
    t.boolean  "single_issue"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "occupation"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "max_login_attempts"
    t.boolean  "must_change_password"
  end

end
