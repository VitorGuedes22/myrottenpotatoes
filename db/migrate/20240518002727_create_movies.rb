class CreateMovies < ActiveRecord::Migration[7.1]
  def up
    create_table 'movies' do |t|
      t.string 'title'
      t.string 'rating'
      t.text 'description'
      t.datetime 'release_date'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end

def down
  drop_table 'movies' # deletes the whole table and all its data!
end
