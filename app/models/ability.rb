class Ability
  include CanCan::Ability

  def initialize(user)
    if user
        if user.admin
            can :manage, :all
        else
            can :read, :all
            can :create, Comment
            can :manage, Comment, user_id: user.id
        end
    end
  end
end
