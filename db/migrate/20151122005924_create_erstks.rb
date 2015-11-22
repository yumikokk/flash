class CreateErstks < ActiveRecord::Migration
  def change
    create_table :erstks do |t|
      t.string :tick
      t.date :erDate
      t.integer :marketCapM
      t.integer :outstandM
      t.integer :floatM
      t.decimal :score
      t.decimal :lscore
      t.decimal :price
      t.decimal :pctChange
      t.decimal :SMA50
      t.decimal :SMA200
      t.decimal :w52low
      t.decimal :w52high
      t.decimal :erMove
      t.decimal :erChange
      t.decimal :trend
      t.decimal :MFI
      t.decimal :insider
      t.decimal :instituition
      t.decimal :cqsg
      t.decimal :nqsg
      t.decimal :cysg
      t.decimal :nysg
      t.decimal :cest
      t.decimal :sdest
      t.decimal :EPS
      t.decimal :EPSNY
      t.decimal :EPSNQ
      t.decimal :PEG
      t.decimal :FA
      t.integer :avgVol
      t.integer :vol10
      t.integer :vol
      t.decimal :yield
      t.decimal :cash
      t.decimal :debt
      t.string :indexMember
      t.decimal :shortScore
      t.decimal :shortRatio
      t.decimal :cScore
      t.timestamps null: false
    end
  end
end
