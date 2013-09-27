class CreateApplists < ActiveRecord::Migration
  def change
    create_table :applists do |t|
      t.string :applink
      t.string :appname
      t.text :appdescr

      t.timestamps
    end
  end
end
