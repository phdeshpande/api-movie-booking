class CreateTariffTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :tariff_types do |t|
      t.string  :position, null: false
      t.float   :price, null: false
      t.float   :tax_percentage, null: false
      t.timestamps
    end
  end
end
