class AddMarketingDescriptionLodging < ActiveRecord::Migration
  def change
    add_column(:lodgings, :marketing_text, :text)
  end
end
