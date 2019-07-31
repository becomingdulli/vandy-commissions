class PiecesController < ApplicationController

  def index
    @pieces = Piece.all
  end
  def create
     @piece = Piece.create(piece_params)
      if @piece.invalid?
        flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
      end
      redirect_to root_path
  end


private

  def piece_params
    params.require(:piece).permit(:title, :name, :description)
  end
end
