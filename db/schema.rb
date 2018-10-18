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

ActiveRecord::Schema.define(version: 2018_10_16_005744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"


  create_table "events", force: :cascade do |t|
    t.integer "sid", null: false, unsigned: true
    t.integer "cid", null: false, unsigned: true
    t.string "signature", null: false
    t.integer "signature_gen", null: false, unsigned: true
    t.integer "signature_id", null: false, unsigned: true
    t.integer "signature_rev", null: false, unsigned: true
    t.datetime "timestamp", null: false
    t.integer "unified_event_id", unsigned: true
    t.integer "unified_event_ref", unsigned: true
    t.datetime "unified_ref_time"
    t.integer "priority", unsigned: true
    t.integer "status", limit: 2, default: 0, unsigned: true
    t.integer "src_ip", unsigned: true
    t.integer "dst_ip", unsigned: true
    t.integer "src_port", unsigned: true
    t.integer "dst_port", unsigned: true
    t.integer "icmp_type", limit: 1, unsigned: true
    t.integer "icmp_code", limit: 1, unsigned: true
    t.integer "ip_proto", limit: 1, unsigned: true
    t.integer "ip_ver", limit: 1, unsigned: true
    t.integer "ip_hlen", limit: 1, unsigned: true
    t.integer "ip_tos", limit: 1, unsigned: true
    t.integer "ip_len", limit: 2, unsigned: true
    t.integer "ip_id", limit: 2, unsigned: true
    t.integer "ip_flags", limit: 1, unsigned: true
    t.integer "ip_off", limit: 2, unsigned: true
    t.integer "ip_ttl", limit: 1, unsigned: true
    t.integer "ip_csum", limit: 2, unsigned: true
    t.datetime "last_modified"
    t.integer "last_uid", unsigned: true
    t.string "abuse_queue", limit: 1
    t.string "abuse_sent", limit: 1
    t.index ["dst_ip"], name: "dst_ip"
    t.index ["dst_port"], name: "dst_port"
    t.index ["icmp_code"], name: "icmp_code"
    t.index ["icmp_type"], name: "icmp_type"
    t.index ["last_modified"], name: "last_modified"
    t.index ["sid", "cid"], name: "event_p_key"
    t.index ["sid", "timestamp"], name: "sid_time"
    t.index ["signature"], name: "signature"
    t.index ["src_ip"], name: "src_ip"
    t.index ["src_port"], name: "src_port"
    t.index ["status"], name: "status"
    t.index ["timestamp"], name: "timestamp"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
