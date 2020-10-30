class UsersController < ApplicationController
    def index 
        @user = User.first
    end

    def update
        @user = User.first
        @user.tag_list.add(tag_params[:tag_list])
        @user.save
        redirect_to users_path
    end

    def tag_delete
        @user = User.first
        @user.tag_list.remove(params[:id])
        @user.save
        redirect_to users_path
    end


    private
        def user_params
            params.require(:user).permit(:tag_list)
        end

        def tag_params
            params.require(:user).permit(:tag_list)
        end
end
