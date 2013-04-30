class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :title_page_img
      t.string :content_partial_view_name

      t.timestamps
    end
  end
end
