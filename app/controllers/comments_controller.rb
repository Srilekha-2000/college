class CommentsController < ApplicationController
    def create
        @student = Student.find(params[:student_id])
        @comment = @student.comments.create(comment_params)
        redirect_to student_path(@student)
      end
      def show
        @student = Student.find(params[:student_id])
        @comment = Comment.new
      end
    
      def edit
        @comment = Comment.find(params[:student_id])
      end
      def update
        @student = Student.find(params[:id])
        @comment = Comment.find(params[:student_id])
    
        if @comment.update(comment_params)
          redirect_to student_path(params[:id])
        else
          render :edit
        end
      end
      
    
      def destroy
        @student = Student.find(params[:student_id])
        @comment = @student.comments.find(params[:id])
        @comment.destroy
        redirect_to student_path(@student), status: :see_other
      end
    
      private
        def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
end
