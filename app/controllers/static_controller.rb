class StaticController < ApplicationController
	def homepage
		@pending_approvals = Post.all.submitted

	end
end