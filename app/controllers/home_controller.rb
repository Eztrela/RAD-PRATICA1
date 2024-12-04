class HomeController < ApplicationController
  def index
    @lojas = Loja.all
  end
end
