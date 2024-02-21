class RegistrationsController < ApplicationController
  def new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      # 保存に成功した場合の処理
    else
      # 保存に失敗した場合の処理
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :location, :url, :worker, :establish, :asset)
  end
end
