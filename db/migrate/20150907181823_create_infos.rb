class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :word
      t.boolean :done
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
