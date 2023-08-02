class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :f_name
      t.string :l_name
      t.text :bio
      t.string :email
      t.bigint :phone_no

      t.timestamps
    end
  end
end
