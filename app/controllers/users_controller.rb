class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    # 1. email 검증 User.find_by(email: 값)
    # 1-1. 맞으면, 비밀번호 확인
    # 1-1-1. 비밀번호가 같으면 가입
    # 1-1-1. 비밀번호가 틀리면, flash 메세지로 비밀번호가 일치하지 않습니다. redirect
    # 1-2. 틀리면, flash 메세지로 가입된 이메일입니다. redirect_to :back
  end
end
