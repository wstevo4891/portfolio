class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  # GET /posts/:slug
  # GET /posts/:slug.json
  def show
    @post = Post.find_by(slug: params[:slug])
  end
end
