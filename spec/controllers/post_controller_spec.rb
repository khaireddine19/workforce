require 'rails_helper'

RSpec.describe PostController do

  describe PostController do
    describe "#index" do
      it "Add new post" do
        Post.create( title: "Post 1", content: "Content 1" )
        expect(Post.count).to eq(1)
      end
    end
  end

  describe PostController do
    describe "#index" do
      context "Add tow post" do
        it "Add tow new post" do
          Post.create( title: "Post 1", content: "Content 1" )
          Post.create( title: "Post 1", content: "Content 1" )
          expect(Post.count).to eq(2)
        end
      end
    end
  end

end
