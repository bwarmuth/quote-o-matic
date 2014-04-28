class ProposalsController < ApplicationController

  before_filter :authenticate_user!
  before_filter :find_proposal, only: [:show, :edit, :update, :destroy, :reseller]
  before_filter :authorize_action

  def index; end
  def show; end
  def new; end
  def create; end
  def edit; end
  def update; end
  def destroy; end

  def reseller
    
  end

  private

  def find_proposal
    @proposal = Proposal.find(params[:id])
  end

  def authorize_action
    raise Pundit::NotAuthorizedError unless ProposalPolicy.new(current_user, @proposal || ::Proposal.new).send("#{self.action_name}?")
  end

  def proposal_params()
    params.require(:proposal).permit( :user_id, :reseller_id, :company_id, :opportunity_id, :status, :approved_date, :declined_date, :sent_date, :completed_date )
  end
end
