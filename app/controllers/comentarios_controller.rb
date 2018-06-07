class ComentariosController < ApplicationController
  # before_action :set_comentario, only: [:show, :edit, :update, :destroy]
  before_action :set_articulo, only: [:create, :destroy]

  # POST /comentarios
  # POST /comentarios.json
  def create
    # @articulo = Articulo.find(params[:articulo_id])

    @comentario = @articulo.comentarios.create(comentario_params)
    redirect_to @articulo
  end


  # DELETE /comentarios/1
  # DELETE /comentarios/1.json

  # "DONAL: related to change on pg 59"
  # def destroy     
  #   @comentario.destroy
  #   respond_to do |format|
  #     format.html { redirect_to comentarios_url, notice: 'Comentario was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  
  def destroy
    # @articulo = Articulo.find(params[:articulo_id])
    @comentario = @articulo.comentarios.find(params[:id])
    @comentario.destroy
    redirect_to @articulo
  end


  private

  # Never trust parameters from the scary internet, only allow the white list through.
    def comentario_params
      params.require(:comentario).permit(:nombre, :texto, :articulo_id)
    end

    def set_articulo
      @articulo = Articulo.find(params[:articulo_id])
    end
end
