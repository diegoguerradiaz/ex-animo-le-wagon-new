# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_21_195318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_offers", force: :cascade do |t|
    t.string "category"
    t.integer "total_unit"
    t.string "offer_name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "products_id"
    t.index ["products_id"], name: "index_food_offers_on_products_id"
    t.index ["user_id"], name: "index_food_offers_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "start_order_date"
    t.datetime "end_order_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.string "stage"
    t.bigint "food_offers_id"
    t.index ["food_offers_id"], name: "index_orders_on_food_offers_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.integer "quantity"
    t.string "unit"
    t.bigint "food_offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_offer_id"], name: "index_products_on_food_offer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "company_name"
    t.string "category"
    t.string "role"
    t.integer "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "food_offers", "products", column: "products_id"
  add_foreign_key "food_offers", "users"
  add_foreign_key "orders", "food_offers", column: "food_offers_id"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "food_offers"
end
