class CreateSpreeSubscriptionFrequencies < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_subscription_frequencies do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
