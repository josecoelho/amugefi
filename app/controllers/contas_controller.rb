class ContasController < ApplicationController
  before_action :authenticate_usuario!
  before_action :set_conta, only: [:show, :edit, :update, :destroy]

  # GET /contas
  def index
    @q = Conta.ransack(params[:q])
    @contas = @q.result
  end

  # GET /contas/1
  def show
  end

  # GET /contas/new
  def new
    @conta = Conta.new
  end

  # GET /contas/1/edit
  def edit
  end

  # POST /contas
  def create
    @conta = Conta.new(conta_params)

    if @conta.save
      redirect_to @conta, notice: 'Conta was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /contas/1
  def update
    if @conta.update(conta_params)
      redirect_to @conta, notice: 'Conta was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /contas/1
  def destroy
    @conta.destroy
    redirect_to contas_url, notice: 'Conta was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conta
      @conta = Conta.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def conta_params
      params.require(:conta).permit(
        :nome, :agencia, :conta_corrente, :boleto_carteira,
        :boleto_nome_cedente, :boleto_documento_cedente,
        :boleto_variacao, :boleto_convenio
      )
    end
end
