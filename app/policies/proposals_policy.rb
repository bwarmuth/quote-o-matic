class ProposalPolicy < ApplicationPolicy
  def index?;   isLoggedIn? end;
  def new?;     isLoggedIn? end;
  def create?;  isLoggedIn? end;
  def edit?;    isLoggedIn? and @user.id == @record.user_id; end
  def update?;  isLoggedIn? and @user.id == @record.user_id; end
  def destroy?; isLoggedIn? and @user.id == @record.user_id; end
  
  def reseller?;        params[:access_key] == @record.access_key; end
  def reseller_update?; params[:access_key] == @record.access_key; end
end