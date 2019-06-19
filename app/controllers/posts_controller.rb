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

    respond_to do |format|
      format.html { render :show, status: :ok }
      format.json { render json: @post, status: :ok }
      format.text { render plain: @post.pretty_print }
    end
  end
end
