class AddBuilderToAddresses < ActiveRecord::Migration
  def change
    add_reference :addresses, :builder, index: true, foreign_key: true
  end
end
