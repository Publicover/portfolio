class AddAppOrderToApps < ActiveRecord::Migration[5.0]
  def change
    add_column :apps, :app_order, :integer
  end
end
