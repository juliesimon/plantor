class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def plants?
    is_user_the_owner_or_admin?
  end

  def dashboard?
    is_user_the_owner_or_admin?
  end

  def update?
     is_user_the_owner_or_admin?
  end

  def edit?
    update?
  end

  private

  def is_user_the_owner_or_admin?
    user == record || user.admin?
  end
end
