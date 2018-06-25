class UsersController < ApplicationController
  def posts
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def index
  end

  def new
  end

  def create
    unless User.find_by(email: params[:email])
      @user = User.new(username: params[:username],
                          email: params[:email],
                          password: params[:password],
                          password_confirmation: params[:password_confirmation])

       if @user.save
         # 가입이 되면, true + 저장이 되고
         flash[:notice] = "가입을 축하드립니다."
         redirect_to '/'
       else
         # 비밀번호가 달라서 가입이 안되면, false + 저장이 안됨
         flash[:alert] = "비밀번호가 다릅니다."
         redirect_to :back
       end
     else
        flash[:alert] = "등록된 이메일입니다."
        redirect_to :back
     end

    # # 1. email 검증 User.find_by(email: 값)
    # unless User.find_by(email: params[:email])
    # # 1-1. 맞으면, 비밀번호 확인
    #   if params[:password] == params[:password_confirmation]
    # # 1-1-1. 비밀번호가 같으면 가입
    #     user = User.create(username: params[:username],
    #                 email: params[:email],
    #                 password: params[:password])
    #     flash[:notice] = "#{user.username}님 회원가입을 축하합니다."
    #     redirect_to '/'
    # # 1-1-1. 비밀번호가 틀리면, flash 메세지로 비밀번호가 일치하지 않습니다. redirect
    #   else
    #     flash[:alert] = "비밀번호가 일치하지 않습니다."
    #     redirect_to :back
    #   end
    # # 1-2. 틀리면, flash 메세지로 가입된 이메일입니다. redirect_to :back
    # else
    #   flash[:alert] = "가입된 이메일입니다."
    #   redirect_to :back
    # end
  end
end
