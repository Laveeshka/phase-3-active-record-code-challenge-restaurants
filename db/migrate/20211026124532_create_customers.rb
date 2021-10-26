class CreateCustomers < ActiveRecord::Migration[6.1]
  create_table :customers do |t|
    t.string :first_name
    t.string :last_name
  end
end
