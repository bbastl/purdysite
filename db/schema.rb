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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140523032631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "distributors", primary_key: "dist_id", force: true do |t|
    t.string "dist_name",     limit: 100
    t.string "dist_address",  limit: 100
    t.string "dist_city",     limit: 100
    t.string "dist_state",    limit: 100
    t.string "dist_country",  limit: 100
    t.string "dist_zip1",     limit: 100
    t.string "dist_zip2",     limit: 100
    t.string "dist_phone",    limit: 100
    t.string "dist_phone2",   limit: 100
    t.string "dist_fax",      limit: 100
    t.string "dist_email",    limit: 100
    t.string "dist_website",  limit: 100
    t.string "dist_manager",  limit: 100
    t.string "dist_title",    limit: 100
    t.string "dist_leds",     limit: 100
    t.string "dist_lcds",     limit: 100
    t.string "dist_fans",     limit: 100
    t.string "dist_switches", limit: 100
    t.string "dist_monitors", limit: 100
  end

  create_table "new_notes", force: true do |t|
    t.integer  "new_order_detail_id"
    t.text     "detail"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "new_order_details", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "product_name"
    t.string   "company"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.string   "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cardholder"
    t.string   "ccnumber"
    t.string   "cctype"
    t.string   "expirymonth"
    t.string   "expiryyear"
    t.string   "status"
    t.string   "shippingnumber"
    t.string   "shippingmethod"
    t.string   "shippingpriority"
    t.string   "shippingcarrier"
    t.string   "auth_status"
    t.string   "auth_by"
    t.string   "auth_date"
    t.string   "auth_time"
    t.string   "note"
    t.string   "sn_flag"
    t.string   "product"
    t.string   "eau"
    t.string   "production_start"
    t.string   "decision_maker"
    t.string   "decision_title"
    t.string   "prototype_date"
    t.string   "buying_criteria"
    t.string   "target_price"
    t.string   "how_did"
    t.string   "competition1"
    t.string   "competition2"
    t.string   "competition3"
    t.string   "competition4"
    t.string   "product_line"
    t.string   "orderprice"
    t.string   "project"
  end

  create_table "notes", primary_key: "notes_id", force: true do |t|
    t.integer "order_id"
    t.string  "note_date", limit: 100
    t.string  "note_time", limit: 100
    t.text    "details"
    t.string  "role",      limit: 100
  end

  create_table "order_details", id: false, force: true do |t|
    t.integer "orderid"
    t.integer "product_id"
    t.string  "product_name"
    t.string  "orderprice"
    t.string  "firstname"
    t.string  "lastname"
    t.string  "company"
    t.string  "address1"
    t.string  "address2"
    t.string  "city"
    t.string  "state"
    t.string  "country"
    t.string  "zip"
    t.string  "phone"
    t.string  "fax"
    t.string  "email"
    t.string  "cardholder"
    t.string  "ccnumber"
    t.string  "cctype"
    t.string  "expirymonth"
    t.string  "expiryyear"
    t.string  "status"
    t.string  "shippingnumber"
    t.string  "shippingmethod"
    t.string  "shippingpriority"
    t.string  "shippingcarrier"
    t.string  "auth_status"
    t.string  "auth_by"
    t.string  "auth_date"
    t.string  "auth_time"
    t.string  "note"
    t.string  "sn_flag"
    t.date    "fld_date"
    t.string  "fld_time"
    t.string  "project"
    t.string  "eau"
    t.string  "production_start"
    t.string  "decision_maker"
    t.string  "decision_title"
    t.string  "prototype_date"
    t.string  "buying_criteria"
    t.string  "target_price"
    t.string  "how_did"
    t.string  "competition1"
    t.string  "competition2"
    t.string  "competition3"
    t.string  "competition4"
    t.string  "product_line"
  end

  create_table "product", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "item_type",     limit: 100
    t.string  "led",           limit: 100
    t.string  "lens",          limit: 100
    t.string  "peak",          limit: 100
    t.string  "lmin",          limit: 100
    t.string  "typ",           limit: 100
    t.string  "ifma",          limit: 100
    t.integer "total"
    t.string  "material",      limit: 100
    t.float   "product_price"
    t.float   "product_sh"
    t.string  "pdf"
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_displays_intchar", primary_key: "product_id", force: true do |t|
    t.string  "product_name",   limit: 100
    t.string  "product_line",   limit: 100
    t.string  "item_type",      limit: 100
    t.text    "news"
    t.string  "lcd",            limit: 100
    t.string  "lines",          limit: 100
    t.string  "character_size", limit: 100
    t.string  "viewing",        limit: 100
    t.string  "outline",        limit: 100
    t.string  "driving",        limit: 100
    t.string  "backlight",      limit: 100
    t.string  "built",          limit: 100
    t.string  "product_price",  limit: 10
    t.string  "product_sh",     limit: 10
    t.string  "pdf"
    t.string  "sort",           limit: 10
    t.boolean "is_active",                  default: true
    t.boolean "is_new",                     default: false
  end

  create_table "product_displays_intgraph", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "item_type",     limit: 100
    t.string  "pixel",         limit: 100
    t.string  "pixel_pitch",   limit: 100
    t.string  "viewing",       limit: 100
    t.string  "overall",       limit: 100
    t.string  "driving",       limit: 100
    t.string  "built",         limit: 100
    t.string  "backlight_30",  limit: 100
    t.string  "backlight_el",  limit: 100
    t.string  "contrast",      limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_displays_prototyping", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.text    "news"
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "description"
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_displays_segment", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.text    "news"
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.string  "display",       limit: 100
    t.string  "digit",         limit: 100
    t.string  "package",       limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_displays_tftmodules", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "item_type",     limit: 100
    t.string  "screen",        limit: 100
    t.string  "pixel",         limit: 100
    t.string  "brightness",    limit: 100
    t.string  "pixel_pitch",   limit: 100
    t.string  "active",        limit: 100
    t.string  "overall",       limit: 100
    t.string  "driving",       limit: 100
    t.string  "input_signal",  limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_displays_tftmonitors", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "item_type",     limit: 100
    t.string  "screen",        limit: 100
    t.string  "pixel",         limit: 100
    t.string  "brightness",    limit: 100
    t.string  "pixel_pitch",   limit: 100
    t.string  "active",        limit: 100
    t.string  "overall",       limit: 100
    t.string  "driving",       limit: 100
    t.string  "input_signal",  limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_fans_accessories", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "news"
    t.string  "fan_compat",    limit: 100
    t.string  "construction",  limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.text    "description"
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_fans_axial_ac", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "news"
    t.string  "frame",         limit: 100
    t.string  "voltage",       limit: 100
    t.string  "airflow",       limit: 100
    t.string  "inputp",        limit: 100
    t.string  "speed",         limit: 100
    t.string  "noise",         limit: 100
    t.string  "weight",        limit: 100
    t.string  "construction",  limit: 100
    t.string  "guard",         limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_fans_axial_dc", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "news"
    t.string  "frame",         limit: 100
    t.string  "voltage",       limit: 100
    t.string  "airflow",       limit: 100
    t.string  "inputp",        limit: 100
    t.string  "inputc",        limit: 100
    t.string  "speed",         limit: 100
    t.string  "noise",         limit: 100
    t.string  "weight",        limit: 100
    t.string  "construction",  limit: 100
    t.string  "guard",         limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_fibre_connectors", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.text    "news"
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "polish"
    t.text    "connector"
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_fibre_modems", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "news"
    t.text    "data"
    t.string  "wavelength",    limit: 100
    t.string  "fibers",        limit: 100
    t.string  "mounting",      limit: 100
    t.string  "sizem"
    t.string  "operating",     limit: 100
    t.string  "connectors",    limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_led_blue_white", id: false, force: true do |t|
    t.integer "product_id",                                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "item_type",     limit: 100
    t.string  "led",           limit: 100
    t.string  "lens",          limit: 100
    t.string  "peak",          limit: 100
    t.string  "lmin",          limit: 100
    t.string  "typ",           limit: 100
    t.string  "ifma",          limit: 100
    t.string  "total",         limit: 10
    t.string  "material",      limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_leds_dual_color", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "item_type",     limit: 100
    t.text    "led"
    t.string  "lens",          limit: 100
    t.string  "peak",          limit: 100
    t.string  "lmin",          limit: 100
    t.string  "typ",           limit: 100
    t.string  "ifma",          limit: 100
    t.string  "total",         limit: 100
    t.string  "material",      limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_leds_green", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "item_type",     limit: 100
    t.text    "led"
    t.string  "lens",          limit: 100
    t.string  "peak",          limit: 100
    t.string  "lmin",          limit: 100
    t.string  "typ",           limit: 100
    t.string  "ifma",          limit: 100
    t.string  "total",         limit: 100
    t.string  "material",      limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_leds_green_segment", primary_key: "product_id", force: true do |t|
    t.string  "product_name",    limit: 100
    t.string  "product_line",    limit: 100
    t.text    "news"
    t.string  "item_type",       limit: 100
    t.text    "led"
    t.string  "face",            limit: 100
    t.string  "display",         limit: 100
    t.string  "characteristics", limit: 100
    t.string  "luminous",        limit: 100
    t.string  "ifma",            limit: 100
    t.string  "polarity",        limit: 100
    t.string  "material",        limit: 100
    t.string  "product_price",   limit: 10
    t.string  "product_sh",      limit: 10
    t.string  "pdf"
    t.string  "sort",            limit: 10
    t.boolean "is_active",                   default: true
    t.boolean "is_new",                      default: false
  end

  create_table "product_leds_orange_amber", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "item_type",     limit: 100
    t.text    "led"
    t.string  "lens",          limit: 100
    t.string  "peak",          limit: 100
    t.string  "lmin",          limit: 100
    t.string  "typ",           limit: 100
    t.string  "ifma",          limit: 100
    t.string  "total",         limit: 100
    t.string  "material",      limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_leds_red", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "item_type",     limit: 100
    t.text    "led"
    t.string  "lens",          limit: 100
    t.string  "peak",          limit: 100
    t.string  "lmin",          limit: 100
    t.string  "typ",           limit: 100
    t.string  "ifma",          limit: 100
    t.string  "total",         limit: 100
    t.string  "material",      limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_leds_special_shape", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "item_type",     limit: 100
    t.text    "led"
    t.string  "lens",          limit: 100
    t.string  "peak",          limit: 100
    t.string  "lmin",          limit: 100
    t.string  "typ",           limit: 100
    t.string  "ifma",          limit: 100
    t.string  "total",         limit: 100
    t.string  "material",      limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_leds_yellow", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "item_type",     limit: 100
    t.text    "led"
    t.string  "lens",          limit: 100
    t.string  "peak",          limit: 100
    t.string  "lmin",          limit: 100
    t.string  "typ",           limit: 100
    t.string  "ifma",          limit: 100
    t.string  "total",         limit: 100
    t.string  "material",      limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_switches_keypads", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "news"
    t.text    "description"
    t.string  "key_config",    limit: 100
    t.string  "key_type",      limit: 100
    t.string  "dimensions",    limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_switches_keypads2", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "news"
    t.text    "description"
    t.string  "forp",          limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_switches_led", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "news"
    t.text    "description"
    t.string  "characters",    limit: 100
    t.string  "available",     limit: 100
    t.string  "maximum",       limit: 100
    t.string  "supply",        limit: 100
    t.string  "dimensions",    limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_switches_rotary", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "news"
    t.string  "knob",          limit: 100
    t.text    "description"
    t.string  "number",        limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

  create_table "product_switches_thumb", primary_key: "product_id", force: true do |t|
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "news"
    t.text    "description"
    t.string  "positions",     limit: 100
    t.string  "available",     limit: 100
    t.string  "maximum",       limit: 100
    t.string  "working",       limit: 100
    t.string  "dimensions",    limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
    t.boolean "is_active",                 default: true
    t.boolean "is_new",                    default: false
  end

end
