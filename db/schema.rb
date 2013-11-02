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

ActiveRecord::Schema.define(version: 20131102201548) do

  create_table "distributors", id: false, force: true do |t|
    t.integer "dist_id"
    t.string  "dist_name",     limit: 100
    t.string  "dist_address",  limit: 100
    t.string  "dist_city",     limit: 100
    t.string  "dist_state",    limit: 100
    t.string  "dist_country",  limit: 100
    t.string  "dist_zip1",     limit: 100
    t.string  "dist_zip2",     limit: 100
    t.string  "dist_phone",    limit: 100
    t.string  "dist_phone2",   limit: 100
    t.string  "dist_fax",      limit: 100
    t.string  "dist_email",    limit: 100
    t.string  "dist_website",  limit: 100
    t.string  "dist_manager",  limit: 100
    t.string  "dist_title",    limit: 100
    t.string  "dist_leds",     limit: 100
    t.string  "dist_lcds",     limit: 100
    t.string  "dist_fans",     limit: 100
    t.string  "dist_switches", limit: 100
    t.string  "dist_monitors", limit: 100
  end

  create_table "notes", id: false, force: true do |t|
    t.integer "notes_id"
    t.integer "order_id"
    t.string  "note_date", limit: 100
    t.string  "note_time", limit: 100
    t.text    "details"
    t.string  "role",      limit: 100
  end

  create_table "order_details", id: false, force: true do |t|
    t.integer "orderid"
    t.integer "product_id"
    t.string  "product_name",     limit: 100
    t.string  "orderprice",       limit: 100
    t.string  "firstname",        limit: 100
    t.string  "lastname",         limit: 100
    t.string  "company",          limit: 100
    t.string  "address1",         limit: 100
    t.string  "address2",         limit: 100
    t.string  "city",             limit: 100
    t.string  "state",            limit: 100
    t.string  "country",          limit: 100
    t.string  "zip",              limit: 100
    t.string  "phone",            limit: 100
    t.string  "fax",              limit: 100
    t.string  "email",            limit: 100
    t.string  "cardholder",       limit: 100
    t.string  "ccnumber",         limit: 100
    t.string  "cctype",           limit: 100
    t.string  "expirymonth",      limit: 100
    t.string  "expiryyear",       limit: 100
    t.string  "status",           limit: 100
    t.string  "shippingnumber",   limit: 100
    t.string  "shippingmethod",   limit: 100
    t.string  "shippingpriority", limit: 100
    t.string  "shippingcarrier",  limit: 100
    t.string  "auth_status",      limit: 100
    t.string  "auth_by",          limit: 100
    t.string  "auth_date",        limit: 100
    t.string  "auth_time",        limit: 100
    t.string  "note",             limit: 100
    t.string  "sn_flag",          limit: 100
    t.string  "fld_date",         limit: 100
    t.string  "fld_time",         limit: 100
    t.string  "project",          limit: 100
    t.string  "eau",              limit: 100
    t.string  "production_start", limit: 100
    t.string  "decision_maker",   limit: 100
    t.string  "decision_title",   limit: 100
    t.string  "prototype_date",   limit: 100
    t.string  "buying_criteria",  limit: 100
    t.string  "target_price",     limit: 100
    t.string  "how_did",          limit: 100
    t.string  "competition1",     limit: 100
    t.string  "competition2",     limit: 100
    t.string  "competition3",     limit: 100
    t.string  "competition4",     limit: 100
    t.string  "product_line",     limit: 100
  end

  create_table "product", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "type",          limit: 100
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
  end

  create_table "product_displays_intchar", id: false, force: true do |t|
    t.integer "product_id",                 null: false
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
  end

  create_table "product_displays_intchars", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_displays_intgraph", id: false, force: true do |t|
    t.integer "product_id",                null: false
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
  end

  create_table "product_displays_prototyping", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.text    "news"
    t.string  "product_line",  limit: 100
    t.string  "item_type",     limit: 100
    t.text    "description"
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
  end

  create_table "product_displays_segment", id: false, force: true do |t|
    t.integer "product_id",                null: false
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
  end

  create_table "product_displays_tftmodules", id: false, force: true do |t|
    t.integer "product_id",                null: false
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
  end

  create_table "product_displays_tftmonitors", id: false, force: true do |t|
    t.integer "product_id",                null: false
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
  end

  create_table "product_fans_accessories", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "type",          limit: 100
    t.text    "news"
    t.string  "fan_compat",    limit: 100
    t.string  "construction",  limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.text    "description"
    t.string  "pdf"
    t.string  "sort",          limit: 10
  end

  create_table "product_fans_axial_ac", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "type",          limit: 100
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
  end

  create_table "product_fans_axial_dc", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "type",          limit: 100
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
  end

  create_table "product_fibre_connectors", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.text    "news"
    t.string  "product_line",  limit: 100
    t.string  "type",          limit: 100
    t.text    "polish"
    t.text    "connector"
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
  end

  create_table "product_fibre_modems", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "type",          limit: 100
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
  end

  create_table "product_led_blue_white", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "type",          limit: 100
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
  end

  create_table "product_leds_dual_color", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "type",          limit: 100
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
  end

  create_table "product_leds_green", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "type",          limit: 100
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
  end

  create_table "product_leds_green_segment", id: false, force: true do |t|
    t.integer "product_id",                  null: false
    t.string  "product_name",    limit: 100
    t.string  "product_line",    limit: 100
    t.text    "news"
    t.string  "type",            limit: 100
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
  end

  create_table "product_leds_orange_amber", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "type",          limit: 100
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
  end

  create_table "product_leds_red", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "type",          limit: 100
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
  end

  create_table "product_leds_special_shape", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "type",          limit: 100
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
  end

  create_table "product_leds_yellow", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.text    "news"
    t.string  "type",          limit: 100
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
  end

  create_table "product_switches_keypads", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "type",          limit: 100
    t.text    "news"
    t.text    "description"
    t.string  "key_config",    limit: 100
    t.string  "key_type",      limit: 100
    t.string  "dimensions",    limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
  end

  create_table "product_switches_keypads2", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "type",          limit: 100
    t.text    "news"
    t.text    "description"
    t.string  "forp",          limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
  end

  create_table "product_switches_led", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "type",          limit: 100
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
  end

  create_table "product_switches_rotary", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "type",          limit: 100
    t.text    "news"
    t.string  "knob",          limit: 100
    t.text    "description"
    t.string  "number",        limit: 100
    t.string  "product_price", limit: 10
    t.string  "product_sh",    limit: 10
    t.string  "pdf"
    t.string  "sort",          limit: 10
  end

  create_table "product_switches_thumb", id: false, force: true do |t|
    t.integer "product_id",                null: false
    t.string  "product_name",  limit: 100
    t.string  "product_line",  limit: 100
    t.string  "type",          limit: 100
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
  end

end
