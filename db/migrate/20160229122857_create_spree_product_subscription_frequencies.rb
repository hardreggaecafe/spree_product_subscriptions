class CreateSpreeProductSubscriptionFrequencies < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_product_subscription_frequencies do |t|
      t.references :product, index: true
      t.references :subscription_frequency, index: { name: 'frequencies_index' }
    end
  end
end
