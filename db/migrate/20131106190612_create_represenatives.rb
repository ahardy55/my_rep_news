class CreateRepresenatives < ActiveRecord::Migration
  def change
    create_table :represenatives do |t|

      t.timestamps
    end
  end
end
