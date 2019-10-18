class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, after: :email
  end
end
# コマンドライン　rails g migration AddNameToUsers name:string
