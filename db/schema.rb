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

ActiveRecord::Schema.define(:version => 20110224221416) do

  create_table "courses", :force => true do |t|
    t.text     "name"
    t.text     "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", :force => true do |t|
    t.integer  "product_id"
    t.integer  "previous_balance"
    t.integer  "new_balance"
    t.integer  "future_balance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "descripcion"
    t.string   "image_url"
    t.decimal  "price",       :precision => 10, :scale => 0
    t.integer  "projection"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.text     "name"
    t.text     "student_id"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
