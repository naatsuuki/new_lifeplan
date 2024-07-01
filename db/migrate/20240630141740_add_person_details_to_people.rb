class AddPersonDetailsToPeople < ActiveRecord::Migration[7.1]
  def change
    unless table_exists?(:people)  # テーブルが存在しない場合のみ実行する
      create_table :people do |t|
        t.string :name
        t.integer :birth_year
        t.timestamps
      end
    end
  end
end
