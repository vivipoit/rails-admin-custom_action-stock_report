module RailsAdmin
  module Config
    module Actions
      class StockReport < RailsAdmin::Config::Actions::Base
        register_instance_option :collection do
          true
        end

        register_instance_option :link_icon do
          'icon-list-alt'
        end

        register_instance_option :pjax? do
          true
        end

        register_instance_option :controller do
          Proc.new do
            @products = Product.all
          end
        end
      end
    end
  end
end
