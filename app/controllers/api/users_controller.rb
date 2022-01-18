module Api
  class UsersController < SecuredController
    def index
      render json: User.all
    end
  end
end