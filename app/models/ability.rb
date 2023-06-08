class Ability
  include CanCan::Ability

  def initialize(user)
    # Abilities for the user here

    return unless user.present?

    can(:manage, Order, user:)
    can :read, Product
    return unless user.admin?

    can :manage, :all
  end
end
