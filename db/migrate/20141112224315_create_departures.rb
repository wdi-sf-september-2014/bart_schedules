class CreateDepartures < ActiveRecord::Migration
  def change
    create_table :departures do |t|
      t.string :line
      t.string :time
      t.references :station, index: true

      t.timestamps
    end
  end
end
