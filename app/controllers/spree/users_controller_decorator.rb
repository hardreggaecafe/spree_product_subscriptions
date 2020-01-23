Spree::UsersController.class_eval do

  before_action :check_login_user, only: :show
  before_action :load_subscriptions, only: :show

  private

    def check_login_user
      render_404 and return if current_user.nil?
    end

    def load_subscriptions
      @orders = current_user.orders.complete.order(completed_at: :desc)
      @subscriptions = Spree::Subscription.active.order(created_at: :desc).with_parent_orders(@orders)
    end

end
