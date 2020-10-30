class UsersController < ApplicationController
    def index 
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.tag_list.add(tag_params[:tag_list])
        @user.save
        debugger
        redirect_to @user
    end

    def tag_show
        if params[:tag]
            @users = User.tagged_with(params[:tag])
            render "index"
        else
            redirect_to users_path, notice: "ERROR"
        end
        debugger
    end

    def delete_tag
        @user = User.first
        @user.tag_list.remove(params[:id])
        @user.save
        redirect_to users_path
    end


    private
        def tag_params
            params.require(:user).permit(:tag_list)
        end
end
