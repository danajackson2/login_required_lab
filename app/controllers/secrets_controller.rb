class SecretsController < ApplicationController
    before_action :require_login

    def show
    end

    def require_login
        if session[:name] == "" || session[:name] == nil
            redirect_to '/login'
        end
    end
end