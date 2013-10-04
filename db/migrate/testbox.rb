# Customer has many orders

class Order < ActiveRecord::Base
  belongs_to :customer
end

class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.timestamps
    end
 
    create_table :orders do |t|
      t.belongs_to :customer # Why is customer_id not needed?
      t.datetime :order_date
      t.timestamps
    end
  end
end


# Supplier owns account

class Supplier < ActiveRecord::Base
  has_one :account
end
 
class Account < ActiveRecord::Base
  belongs_to :supplier
end

class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string  :name
      t.timestamps
    end
 
    create_table :accounts do |t|
      t.integer :supplier_id # ????
      t.string  :account_number
      t.timestamps
    end
  end
end
