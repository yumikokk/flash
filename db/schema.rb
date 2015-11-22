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

ActiveRecord::Schema.define(version: 20151122015234) do

  create_table "erstk", id: false, force: :cascade do |t|
    t.string   "tick",        limit: 8,                                       null: false
    t.datetime "erDate"
    t.integer  "marketCapM",  limit: 4
    t.integer  "outstandM",   limit: 4
    t.integer  "floatM",      limit: 4
    t.decimal  "score",                 precision: 4, scale: 2
    t.decimal  "lscore",                precision: 4, scale: 2
    t.decimal  "price",                 precision: 8, scale: 2
    t.decimal  "pctChange",             precision: 4, scale: 2
    t.decimal  "SMA50",                 precision: 8, scale: 2
    t.decimal  "SMA200",                precision: 8, scale: 2
    t.decimal  "w52low",                precision: 8, scale: 2
    t.decimal  "w52high",               precision: 8, scale: 2
    t.decimal  "erMove",                precision: 4, scale: 2, default: 0.0
    t.decimal  "erChange",              precision: 4, scale: 2, default: 0.0
    t.decimal  "avgChg",                precision: 4, scale: 2
    t.decimal  "trend",                 precision: 6, scale: 2
    t.decimal  "MFI",                   precision: 6, scale: 2, default: 0.0
    t.decimal  "insider",               precision: 4, scale: 2
    t.decimal  "institution",           precision: 5, scale: 2
    t.decimal  "cqsg",                  precision: 4, scale: 1
    t.decimal  "nqsg",                  precision: 4, scale: 1
    t.decimal  "cysg",                  precision: 4, scale: 1
    t.decimal  "nysg",                  precision: 4, scale: 1
    t.decimal  "cest",                  precision: 6, scale: 2
    t.decimal  "sdest",                 precision: 6, scale: 2
    t.decimal  "EPS",                   precision: 8, scale: 2
    t.decimal  "EPSNY",                 precision: 8, scale: 2
    t.decimal  "EPSNQ",                 precision: 8, scale: 2
    t.decimal  "PEG",                   precision: 6, scale: 2
    t.decimal  "FA",                    precision: 5, scale: 2
    t.integer  "avgVol",      limit: 4
    t.integer  "vol10",       limit: 4
    t.integer  "vol",         limit: 4
    t.decimal  "yield",                 precision: 4, scale: 2, default: 0.0
    t.decimal  "cash",                  precision: 6, scale: 2
    t.decimal  "debt",                  precision: 8, scale: 1
    t.string   "indexMember", limit: 0
    t.decimal  "shortScore",            precision: 4, scale: 2
    t.decimal  "shortRatio",            precision: 6, scale: 2
    t.decimal  "cScore",                precision: 4, scale: 2
  end

  add_index "erstk", ["erDate"], name: "erDate", using: :btree
  add_index "erstk", ["indexMember"], name: "indexMember", using: :btree
  add_index "erstk", ["tick", "erDate"], name: "tick", unique: true, using: :btree
  add_index "erstk", ["tick", "erDate"], name: "tick_2", unique: true, using: :btree

  create_table "erstks", force: :cascade do |t|
    t.string   "tick",         limit: 255
    t.date     "erDate"
    t.integer  "marketCapM",   limit: 4
    t.integer  "outstandM",    limit: 4
    t.integer  "floatM",       limit: 4
    t.decimal  "score",                    precision: 10
    t.decimal  "lscore",                   precision: 10
    t.decimal  "price",                    precision: 10
    t.decimal  "pctChange",                precision: 10
    t.decimal  "SMA50",                    precision: 10
    t.decimal  "SMA200",                   precision: 10
    t.decimal  "w52low",                   precision: 10
    t.decimal  "w52high",                  precision: 10
    t.decimal  "erMove",                   precision: 10
    t.decimal  "erChange",                 precision: 10
    t.decimal  "trend",                    precision: 10
    t.decimal  "MFI",                      precision: 10
    t.decimal  "insider",                  precision: 10
    t.decimal  "instituition",             precision: 10
    t.decimal  "cqsg",                     precision: 10
    t.decimal  "nqsg",                     precision: 10
    t.decimal  "cysg",                     precision: 10
    t.decimal  "nysg",                     precision: 10
    t.decimal  "cest",                     precision: 10
    t.decimal  "sdest",                    precision: 10
    t.decimal  "EPS",                      precision: 10
    t.decimal  "EPSNY",                    precision: 10
    t.decimal  "EPSNQ",                    precision: 10
    t.decimal  "PEG",                      precision: 10
    t.decimal  "FA",                       precision: 10
    t.integer  "avgVol",       limit: 4
    t.integer  "vol10",        limit: 4
    t.integer  "vol",          limit: 4
    t.decimal  "yield",                    precision: 10
    t.decimal  "cash",                     precision: 10
    t.decimal  "debt",                     precision: 10
    t.string   "indexMember",  limit: 255
    t.decimal  "shortScore",               precision: 10
    t.decimal  "shortRatio",               precision: 10
    t.decimal  "cScore",                   precision: 10
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "histd", id: false, force: :cascade do |t|
    t.string  "tick",  limit: 6,                         null: false
    t.date    "date",                                    null: false
    t.decimal "open",            precision: 8, scale: 2
    t.decimal "high",            precision: 8, scale: 2
    t.decimal "low",             precision: 8, scale: 2
    t.decimal "close",           precision: 8, scale: 2
    t.integer "vol",   limit: 4
    t.time    "htime"
    t.time    "ltime"
  end

  add_index "histd", ["tick", "date"], name: "tick", unique: true, using: :btree

  create_table "insts", primary_key: "acquirer", force: :cascade do |t|
    t.integer "id",       limit: 4,                   null: false
    t.boolean "hedge",                default: false
    t.string  "family",   limit: 16
    t.integer "strength", limit: 1,   default: 0,     null: false
    t.string  "acqId",    limit: 10
    t.integer "trans",    limit: 4
    t.string  "link",     limit: 192
  end

  add_index "insts", ["id"], name: "id", unique: true, using: :btree

  create_table "intrad", id: false, force: :cascade do |t|
    t.string   "tick",   limit: 6,                         null: false
    t.datetime "datetm",                                   null: false
    t.decimal  "open",             precision: 8, scale: 2
    t.decimal  "high",             precision: 8, scale: 2
    t.decimal  "low",              precision: 8, scale: 2
    t.decimal  "close",            precision: 8, scale: 2
    t.integer  "vol",    limit: 4
  end

  add_index "intrad", ["tick", "datetm"], name: "tick", unique: true, using: :btree

  create_table "intrads", id: false, force: :cascade do |t|
    t.string  "tick",  limit: 6,                         null: false
    t.date    "date",                                    null: false
    t.time    "hTime"
    t.time    "lTime"
    t.decimal "delta",           precision: 8, scale: 2
  end

  create_table "isc", id: false, force: :cascade do |t|
    t.string   "tick",        limit: 8,                          default: "",  null: false
    t.datetime "date",                                                         null: false
    t.string   "action",      limit: 1
    t.string   "subjectName", limit: 32
    t.string   "acquirer",    limit: 32
    t.integer  "dealer",      limit: 1
    t.decimal  "pctOwned",               precision: 4, scale: 2
    t.decimal  "pctChange",              precision: 4, scale: 2, default: 0.0
    t.decimal  "price",                  precision: 8, scale: 2
    t.decimal  "MFI",                    precision: 6, scale: 2
    t.decimal  "insider",                precision: 4, scale: 2
    t.decimal  "institution",            precision: 5, scale: 2
    t.string   "sector",      limit: 16
    t.integer  "floatM",      limit: 4
    t.integer  "outstandM",   limit: 4
    t.integer  "marketCapM",  limit: 4
    t.decimal  "PE",                     precision: 6, scale: 2
    t.decimal  "PEG",                    precision: 6, scale: 2
    t.string   "industry",    limit: 32
  end

  add_index "isc", ["acquirer"], name: "acq", using: :btree
  add_index "isc", ["date", "subjectName", "acquirer", "pctOwned"], name: "date_2", unique: true, using: :btree
  add_index "isc", ["subjectName"], name: "subjectName", using: :btree
  add_index "isc", ["tick"], name: "tick", using: :btree

  create_table "mflow", id: false, force: :cascade do |t|
    t.string  "tick",          limit: 6,                         null: false
    t.date    "date",                                            null: false
    t.decimal "price",                   precision: 8, scale: 2
    t.decimal "pctChg",                  precision: 4, scale: 2
    t.decimal "ndpctChg",                precision: 4, scale: 2
    t.decimal "mflow",                   precision: 6, scale: 2
    t.decimal "tickup",                  precision: 6, scale: 2
    t.decimal "tickdown",                precision: 6, scale: 2
    t.decimal "ratio",                   precision: 6, scale: 2
    t.decimal "bmflow",                  precision: 6, scale: 2
    t.decimal "btickup",                 precision: 6, scale: 2
    t.decimal "btickdown",               precision: 6, scale: 2
    t.decimal "bratio",                  precision: 6, scale: 2
    t.decimal "tickupRatio",             precision: 5, scale: 2
    t.decimal "tickdownRatio",           precision: 5, scale: 2
    t.decimal "corelation",              precision: 5, scale: 2
    t.integer "cnt",           limit: 2
    t.decimal "wkPctChg",                precision: 4, scale: 2
  end

  add_index "mflow", ["tick", "date"], name: "tick", unique: true, using: :btree

  create_table "options", id: false, force: :cascade do |t|
    t.string  "tick",      limit: 6
    t.date    "acqDate"
    t.decimal "acqPrice",            precision: 6, scale: 2
    t.decimal "acqOPrice",           precision: 8, scale: 2
    t.integer "acqVol",    limit: 4
    t.integer "acqVal",    limit: 4
    t.decimal "Strike",              precision: 6, scale: 2
    t.date    "expDate"
    t.decimal "lPrice",              precision: 8, scale: 2
    t.decimal "lOPrice",             precision: 8, scale: 2
    t.string  "CorP",      limit: 1
    t.integer "acqOI",     limit: 4
    t.integer "shortInt",  limit: 4
    t.decimal "acqWeight",           precision: 6, scale: 4
    t.decimal "PnL",                 precision: 6, scale: 2
    t.decimal "oPnL",                precision: 6, scale: 2
  end

  add_index "options", ["tick", "acqDate", "CorP", "Strike"], name: "tick", unique: true, using: :btree

  create_table "pomo", id: false, force: :cascade do |t|
    t.date    "date",                                        null: false
    t.decimal "sizeB", precision: 4, scale: 2, default: 0.0
  end

  add_index "pomo", ["date"], name: "date", unique: true, using: :btree

  create_table "sectors", id: false, force: :cascade do |t|
    t.string  "industry",   limit: 32,                                       null: false
    t.integer "indu_id",    limit: 3,                                        null: false
    t.string  "sector",     limit: 16,                                       null: false
    t.integer "sect_id",    limit: 3,                                        null: false
    t.integer "marketCapM", limit: 4,                          default: 0,   null: false
    t.decimal "cScore",                precision: 4, scale: 2, default: 0.0, null: false
    t.decimal "lScore",                precision: 4, scale: 2, default: 0.0, null: false
    t.decimal "maScore",               precision: 4, scale: 2, default: 0.0, null: false
    t.decimal "MFI",                   precision: 4, scale: 2,               null: false
  end

  add_index "sectors", ["indu_id"], name: "indu_id", unique: true, using: :btree

  create_table "sstk", primary_key: "tick", force: :cascade do |t|
    t.string  "name",        limit: 32
    t.integer "marketCapM",  limit: 4
    t.integer "outstandM",   limit: 4
    t.decimal "floatM",                 precision: 8, scale: 2
    t.decimal "score",                  precision: 4, scale: 2
    t.decimal "lscore",                 precision: 4, scale: 2
    t.decimal "lscore0",                precision: 4, scale: 2
    t.decimal "price",                  precision: 8, scale: 2
    t.decimal "pctChange",              precision: 4, scale: 2
    t.decimal "SMA50",                  precision: 8, scale: 2
    t.decimal "SMA200",                 precision: 8, scale: 2
    t.decimal "w52low",                 precision: 8, scale: 2
    t.decimal "w52high",                precision: 8, scale: 2
    t.decimal "trend",                  precision: 6, scale: 2
    t.decimal "MFI",                    precision: 6, scale: 2
    t.decimal "MFI0",                   precision: 6, scale: 2
    t.decimal "insider",                precision: 5, scale: 2
    t.decimal "institution",            precision: 5, scale: 2
    t.decimal "cqsg",                   precision: 4, scale: 1
    t.decimal "nqsg",                   precision: 4, scale: 1
    t.decimal "cysg",                   precision: 4, scale: 1
    t.decimal "nysg",                   precision: 4, scale: 1
    t.decimal "cest",                   precision: 6, scale: 2
    t.decimal "sdest",                  precision: 6, scale: 2
    t.decimal "EPS",                    precision: 6, scale: 2
    t.decimal "EPS0",                   precision: 6, scale: 2
    t.decimal "EPSNY",                  precision: 6, scale: 2
    t.decimal "EPSNY0",                 precision: 6, scale: 2
    t.decimal "EPSNQ",                  precision: 6, scale: 2
    t.decimal "EPSNQ0",                 precision: 6, scale: 2
    t.decimal "PEG",                    precision: 6, scale: 2
    t.integer "revM",        limit: 4
    t.decimal "gMargin",                precision: 4, scale: 2
    t.decimal "revGrth",                precision: 6, scale: 2
    t.integer "employees",   limit: 4
    t.decimal "cScore",                 precision: 4, scale: 2, default: 0.0
    t.decimal "FA",                     precision: 4, scale: 2
    t.decimal "FA0",                    precision: 4, scale: 2
    t.integer "avgVol",      limit: 4
    t.integer "vol10",       limit: 4,                          default: 0
    t.integer "vol",         limit: 4
    t.decimal "yield",                  precision: 4, scale: 2, default: 0.0
    t.decimal "cash",                   precision: 5, scale: 2
    t.decimal "debt",                   precision: 8, scale: 1
    t.string  "industry",    limit: 32
    t.string  "sector",      limit: 16
    t.string  "indexMember", limit: 0
    t.decimal "shortScore",             precision: 4, scale: 2
    t.decimal "shortRatio",             precision: 6, scale: 2
    t.decimal "shortRatio0",            precision: 6, scale: 2
    t.string  "exch",        limit: 12
  end

  add_index "sstk", ["indexMember"], name: "indexMember", using: :btree
  add_index "sstk", ["name"], name: "name", using: :btree

  create_table "sstks", force: :cascade do |t|
    t.string   "tick",         limit: 255
    t.string   "name",         limit: 255
    t.integer  "marketCapM",   limit: 4
    t.integer  "outstandM",    limit: 4
    t.integer  "floatM",       limit: 4
    t.decimal  "score",                    precision: 10
    t.decimal  "lscore",                   precision: 10
    t.decimal  "lscore0",                  precision: 10
    t.decimal  "price",                    precision: 10
    t.decimal  "pctChange",                precision: 10
    t.decimal  "SMA50",                    precision: 10
    t.decimal  "SMA200",                   precision: 10
    t.decimal  "w52low",                   precision: 10
    t.decimal  "w52high",                  precision: 10
    t.decimal  "trend",                    precision: 10
    t.decimal  "MFI",                      precision: 10
    t.decimal  "MFI0",                     precision: 10
    t.decimal  "insider",                  precision: 10
    t.decimal  "instituition",             precision: 10
    t.decimal  "cqsg",                     precision: 10
    t.decimal  "nqsg",                     precision: 10
    t.decimal  "cysg",                     precision: 10
    t.decimal  "nysg",                     precision: 10
    t.decimal  "cest",                     precision: 10
    t.decimal  "sdest",                    precision: 10
    t.decimal  "EPS",                      precision: 10
    t.decimal  "EPS0",                     precision: 10
    t.decimal  "EPSNY",                    precision: 10
    t.decimal  "EPSNY0",                   precision: 10
    t.decimal  "EPSNQ",                    precision: 10
    t.decimal  "EPSNQ0",                   precision: 10
    t.decimal  "PEG",                      precision: 10
    t.integer  "revM",         limit: 4
    t.decimal  "gMargin",                  precision: 10
    t.decimal  "revGrth",                  precision: 10
    t.integer  "employees",    limit: 4
    t.decimal  "cScore",                   precision: 10
    t.decimal  "FA",                       precision: 10
    t.decimal  "FA0",                      precision: 10
    t.integer  "avgVol",       limit: 4
    t.integer  "vol10",        limit: 4
    t.integer  "vol",          limit: 4
    t.decimal  "yield",                    precision: 10
    t.decimal  "cash",                     precision: 10
    t.decimal  "debt",                     precision: 10
    t.string   "industry",     limit: 255
    t.string   "sector",       limit: 255
    t.string   "indexMember",  limit: 255
    t.decimal  "shortScore",               precision: 10
    t.decimal  "shortRatio",               precision: 10
    t.decimal  "shortRatio0",              precision: 10
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "tastk", id: false, force: :cascade do |t|
    t.string  "tick",       limit: 6,                         null: false
    t.date    "date",                                         null: false
    t.decimal "open",                 precision: 8, scale: 2
    t.decimal "high",                 precision: 8, scale: 2
    t.decimal "low",                  precision: 8, scale: 2
    t.decimal "close",                precision: 8, scale: 2
    t.decimal "pctChg",               precision: 4, scale: 2
    t.decimal "ndpctChg",             precision: 4, scale: 2
    t.integer "vol",        limit: 4
    t.integer "vol30",      limit: 4
    t.decimal "rsi",                  precision: 4, scale: 2
    t.decimal "maup",                 precision: 8, scale: 4
    t.decimal "madn",                 precision: 8, scale: 4
    t.decimal "ma3",                  precision: 8, scale: 2
    t.decimal "ma8",                  precision: 8, scale: 2
    t.decimal "ma13",                 precision: 8, scale: 2
    t.decimal "ma38",                 precision: 8, scale: 2
    t.decimal "ma72",                 precision: 8, scale: 2
    t.decimal "ma200",                precision: 8, scale: 2
    t.decimal "maScore",              precision: 4, scale: 2
    t.decimal "swScore",              precision: 4, scale: 2
    t.decimal "deltaScore",           precision: 4, scale: 2
  end

  add_index "tastk", ["date"], name: "date", using: :btree
  add_index "tastk", ["tick", "date"], name: "tickDate", unique: true, using: :btree
  add_index "tastk", ["tick"], name: "tick_2", using: :btree

end
