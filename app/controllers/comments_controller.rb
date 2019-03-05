class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.new(comment_params.merge(user_id: current_user.id))
		if @comment.save
			redirect_to post_path(@post)
		else
			render template: 'posts/show', locals: {post: @post, comment: @comment }
			# render 'new'
		end
	end

	private

	def comment_params
		params[:comment].permit(:content,:image)
	end
end
