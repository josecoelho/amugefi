class VendasController < ApplicationController
  before_action :set_venda, only: [:show, :edit, :update, :destroy]

  # GET /vendas
  def index
    @q = Venda.ransack(params[:q])
    @vendas = @q.result
  end

  # GET /vendas/1
  def show
  end

  # GET /vendas/new
  def new
    @venda = Venda.new
  end

  # GET /vendas/1/edit
  def edit
  end

  # POST /vendas
  def create
    @venda = Venda.new(venda_params)

    if @venda.save
      redirect_to @venda, notice: 'Venda was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /vendas/1
  def update
    if @venda.update(venda_params)
      redirect_to @venda, notice: 'Venda was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /vendas/1
  def destroy
    @venda.destroy
    redirect_to vendas_url, notice: 'Venda was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venda
      @venda = Venda.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def venda_params
      params.require(:venda).permit(:cliente_id, :descricao, :data_faturamento, :data_cobranca, :pago, :valor)
    end
end
