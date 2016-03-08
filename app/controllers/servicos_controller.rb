class ServicosController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_servico, only: [:show, :edit, :update, :destroy]

  # GET /servicos
  def index
    @q = Servico.ransack(params[:q])
    @servicos = @q.result
  end

  # GET /servicos/1
  def show
  end

  # GET /servicos/new
  def new
    @servico = Servico.new
  end

  # GET /servicos/1/edit
  def edit
  end

  # POST /servicos
  def create
    @servico = Servico.new(servico_params)

    if @servico.save
      redirect_to @servico, notice: 'Servico was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /servicos/1
  def update
    if @servico.update(servico_params)
      redirect_to @servico, notice: 'Servico was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /servicos/1
  def destroy
    @servico.destroy
    redirect_to servicos_url, notice: 'Servico was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servico
      @servico = Servico.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def servico_params
      params.require(:servico).permit(:descricao, :valor)
    end
end
