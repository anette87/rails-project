class CreateUserFigures < ActiveRecord::Migration[6.0]
  def change
    create_table :user_figures do |t|
      t.integer :user_id
      t.integer :figure_id

      t.timestamps
    end
  end
end
