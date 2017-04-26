class PortfoliosController < ApplicationController
    before_action :set_portfolio_item, only: [ :edit, :show, :update, :destroy]
    layout 'portfolio'
    access all: [:show, :index, :angular ], user: {except: [:destroy,:new, :create, :update, :edit, :sort]}, site_admin: :all
    def index
      # pagination 
      # @portfolio_items = Portfolio.page(params[:page]).per(6)
      
      # looking for position attr in Portfolio db and
      # sort it from lowest to highest which is in scope by_position in
      # portfolio.rb 
      @portfolio_items = Portfolio.by_position.page(params[:page]).per(6)
      
    end
    
    
    def sort
      params[:order].each do |key,value| 
        #Parameters: {"order"=>{"0"=>{"id"=>"8", "position"=>"1"}, 
        #"1"=>{"id"=>"9", "position"=>"2"}, "2"=>{"id"=>"1", "position"=>"3"}}}
        # 0 is a key and value is {"id"=>"8", "position"=>"1"}
        # value[:id]
        Portfolio.find(value[:id]).update!(position: value[:position])
      end
      #by pass a ruby on rails trandition to look for a view template
      render nothing: true
    end
    
    def angular
      @angular_portfolio_items = Portfolio.angular
    end
    
    def show
      # debuggin with bugbye-pry gem
      #binding.pry
    end
    
    def new
        @portfolio_item = Portfolio.new 
    end
    
    def create
        @portfolio_item = Portfolio.new(portfolio_params)
    
        respond_to do |format|
          if @portfolio_item.save 
            format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
          else
            format.html { render :new } 
          end
        end
    end
    
    def edit
    end
    
    def update
      respond_to do |format|
        if @portfolio_item.update_attributes(portfolio_params)
          format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end
   
    def destroy
      @portfolio_item .destroy
      respond_to do |format|
        format.html { redirect_to portfolios_url , notice: 'Portfolio was successfully removed.' }
      end
    end
  
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:title, 
                                        :subtitle,
                                        :body,
                                        :main_image,
                                        :thumb_image,
                                        # delete tech related to cocoon gem 
                                        technologies_attributes: [:id,:name, :_destroy]
                                        )
    end
end  

