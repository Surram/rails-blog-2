class BlogPostsController < ApplicationController
    def index
      @all_posts = BlogPost.all
    end

    def show
      @blog_post = BlogPost.find(params[:id])
    end

    def new
      @blog_post = BlogPost.new
    end

    def create
      @blog_post = BlogPost.create(params[:blog_post])
      redirect_to '/blog_posts'
    end

    def edit
      @blog_post = BlogPost.find(params[:id])
    end

    def update
      @blog_post = BlogPost.find(params[:id])
      @blog_post.update_attributes(params[:blog_post])

      redirect_to "/blog_posts/#{@blog_post.id}"
    end

    def destroy
      @blog_post = BlogPost.find(params[:id])
      @blog_post.destroy

      redirect_to "/blog_posts"
    end
end