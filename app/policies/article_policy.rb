class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end



  def index?
  	user.present?
  end

  def show?
  end

  def new?
    user.present?
  end

  def create?
    creator_user?
  end

  def update?
    user.present? || auth_user?
  end

  def edit?
    user.present? || auth_user?
  end

  def destroy?
    user.present? || auth_user?
  end

private

  def auth_user?
  	user.role == "admin"
  end

  def creator_user?
    user.present? 
  end
end
