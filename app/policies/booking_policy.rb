class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    record.user == user || record.prestation.user
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end
end
