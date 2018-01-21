class CreateCupons < ActiveRecord::Migration[5.1]
  def change
    create_table :cupons do |t|
      t.string :code
      t.string :comment
      t.boolean :valid
      t.datetime :start
      t.datetime :end
      t.float :value

      t.timestamps
    end
  end
end
