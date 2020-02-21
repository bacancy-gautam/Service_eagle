class SuperAdminController < ApplicationController
    def new
        @user = User.new
    end
    
      def create
        @user = User.new(allowed_user_parameter)
        # @user.company_id=params[:company_id]
        
        
        if @user.save
          @user.add_role :company_admin
          render html: 'comany admin created'
        else
          render html: 'compnay admin not created'
        end
      end
    
      private
    
      def allowed_user_parameter
        params.require(:user).permit(:firstname, :lastname, :username, :email, :contact, :password, :password_confirmation,:company_id)
        byebug
      end
end
