class CreateGames < ActiveRecord::Migration
  def up
    create_table :games do |t|
      t.string :title
      t.integer :creator_id
      t.text :description
      t.timestamps
    end

    create_table :rules do |t|
      t.integer :game_id
      t.integer :order
      t.text :content
      t.timestamps
    end

    create_table :players do |t|
      t.string :email
      t.string :screen_name
      t.string :encrypted_password
      t.integer :rating
      t.timestamps
    end

    create_table :algorithms do |t|
      t.integer :player_id
      t.string :title
      t.text :code
      t.timestamps
    end

    create_table :battles do |t|
      t.integer :game_id
      t.timestamps
    end

    create_table :battles_players do |t|
      t.integer :battle_id
      t.integer :player_id
    end

    create_table :battles_algorithms do |t|
      t.integer :battle_id
      t.integer :algorithm_id
    end
  end

  def down
  end
end
