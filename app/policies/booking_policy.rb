class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def accept?
    is_user_the_owner_or_admin?
  end

  def decline?
    is_user_the_owner_or_admin?
  end

  def create?
    return true
  end

  private

  def is_user_the_owner_or_admin?
    user == record.user || user.admin?
  end
end
