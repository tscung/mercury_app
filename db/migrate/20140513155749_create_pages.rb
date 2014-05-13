class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content

      t.timestamps
    end

    Page.create(
        title: 'Lorem ipsum',
        content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque faucibus scelerisque nibh, vitae sagittis turpis mattis ornare. Vestibulum auctor dictum ipsum, quis rhoncus nisl. In nec malesuada odio. Proin aliquet felis tristique libero porttitor mattis. Fusce feugiat enim id nibh pulvinar fermentum. Suspendisse vulputate metus sit amet semper laoreet. Sed dapibus est metus, a fermentum turpis bibendum eget. Fusce congue ligula in dignissim consectetur. Ut tempus non felis quis pellentesque. Donec hendrerit lorem at tellus dignissim auctor. Pellentesque porttitor, nunc eu semper vulputate, mi nisl aliquam sem, ut convallis libero tellus at nisi. In convallis mauris eu sapien suscipit, id auctor mi venenatis.'
    )
  end
end
