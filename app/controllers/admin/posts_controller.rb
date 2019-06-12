module Admin
  class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_admin!
  
    # GET /blog_posts
    # GET /blog_posts.json
    def index
      @posts = ::Post.all.order(created_at: :desc)
    end
  
    # GET /blog_posts/1
    # GET /blog_posts/1.json
    def show
    end
  
    # GET /blog_posts/new
    def new
      @post = ::Post.new
    end
  
    # GET /blog_posts/1/edit
    def edit
    end
  
    # POST /blog_posts
    # POST /blog_posts.json
    def create
      @post = ::Post.new(post_params)
  
      respond_to do |format|
        if @post.save
          format.html { redirect_to show_post, notice: 'Blog post was successfully created.' }
          format.json { render :show, status: :created, location: @post }
        else
          format.html { render :new }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /blog_posts/1
    # PATCH/PUT /blog_posts/1.json
    def update
      respond_to do |format|
        if @post.update(post_params)
          format.html { redirect_to show_post, notice: 'Blog post was successfully updated.' }
          format.json { render :show, status: :ok, location: @post }
        else
          format.html { render :edit }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /blog_posts/1
    # DELETE /blog_posts/1.json
    def destroy
      @post.destroy
      respond_to do |format|
        format.html { redirect_to admin_posts_url, notice: 'Blog post was deleted' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = ::Post.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def post_params
        params.require(:post).permit(:title, :date, :body, :cover, :cover_cache, {images: []})
      end

      def show_post
        admin_post_url(@post.id)
      end
  end
end
