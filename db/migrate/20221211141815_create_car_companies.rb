class CreateCarCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :car_companies do |t|
      t.references :company, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
