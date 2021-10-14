require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Add new Post" do
    context "Check count of post" do
      puts "Check count of post"
      it "Check count of post" do
        Post.create( title: "First post", content: "Content of first post" )
        expect(Post.count).to eq(1)
      end
    end
    context "Check title of post" do
      puts "Check title of post"
      it "Check title of post" do
        Post.create( title: "First post", content: "Content of first post" )
        expect(Post.first.title).to include "First"
      end
    end
    context "Check title is empty" do
      puts "Check title is empty"
      it "Check title of post" do
        Post.create( title: "First post", content: "Content of first post" )
        expect(Post.first).to be_valid
      end
    end
  end
end
