class ProdutosController < ApplicationController
    def index
        @produto = Produto.order( nome: :desc).limit 5

        @produtoBarato = Produto.order( :preco).limit 1

    end

    def create
        
        produto = params.require(:produto).permit(:nome,  :descricao, :preco, :quantidade)
        
        Produto.create produto 
        redirect_to root_path
    end


end
