class ArticlePolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def new?
    if user.is_admin? # This is a method on the user model
      true
    else
      false # Always be explicit not implicit with your code
    end
  end

  def create?
    new?
  end

  def update?
    new?
  end

  def edit?
    new?
  end

  def destroy?
    new?
  end
end