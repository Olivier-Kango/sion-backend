# frozen_string_literal: true
class Ability
  include CanCan::Ability

  def initialize(user)
    # Abilities for the user here
    
    return unless user.present?
    can :manage, Order, user: user
    can :read, Food
    return unless user.admin?
    can :manage, :all
  end
end
