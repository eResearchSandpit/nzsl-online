module Admin
  class SettingsController < ApplicationController
    layout 'admin'
    before_action :authenticate_user!, :set_title

    def show
      redirect_to edit_admin_settings_path
    end

    def edit; end

    def update
      if Setting.update_all(settings_params)
        flash[:notice] = 'Settings were successfully saved.'
      end
      redirect_to edit_admin_settings_path
    end

    private

    def set_title
      @title = 'Administrate Settings'
    end

    def settings_params
      params.require(:settings).permit('help', 'glossary', '404', 'footer')
    end
  end
end
