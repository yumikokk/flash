class CreateSstks < ActiveRecord::Migration
  def change
    create_table :sstks do |t|
      t.string :tick
      t.string :name
      t.integer :marketCapM
      t.integer :outstandM
      t.integer :floatM
      t.decimal :score
      t.decimal :lscore
      t.decimal :lscore0
      t.decimal :price
      t.decimal :pctChange
      t.decimal :SMA50
      t.decimal :SMA200
      t.decimal :w52low
      t.decimal :w52high
      t.decimal :trend
      t.decimal :MFI
      t.decimal :MFI0
      t.decimal :insider
      t.decimal :instituition
      t.decimal :cqsg
      t.decimal :nqsg
      t.decimal :cysg
      t.decimal :nysg
      t.decimal :cest
      t.decimal :sdest
      t.decimal :EPS
      t.decimal :EPS0
      t.decimal :EPSNY
      t.decimal :EPSNY0
      t.decimal :EPSNQ
      t.decimal :EPSNQ0
      t.decimal :PEG
      t.integer :revM
      t.decimal :gMargin
      t.decimal :revGrth
      t.integer :employees
      t.decimal :cScore
      t.decimal :FA
      t.decimal :FA0
      t.integer :avgVol
      t.integer :vol10
      t.integer :vol
      t.decimal :yield
      t.decimal :cash
      t.decimal :debt
      t.string :industry
      t.string :sector
      t.string :indexMember
      t.decimal :shortScore
      t.decimal :shortRatio
      t.decimal :shortRatio0
      
      t.timestamps null: false
    end
  end
end
