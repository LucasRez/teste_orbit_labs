class ReportsController < ApplicationController
  def create
    report = Report.new(report_params)
    if report.save
      render json: report
    else
      render json: { message: 'validation failed', errors: report.errors },
             status: :unprocessable_entity
    end
  end

  private

  def report_params
    params.permit(:user_id, :comment_id)
  end
end
