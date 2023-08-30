class MachinesController < ApplicationController
    

    def index  
       @machines = Machine.all 
    end

    def show
        @machine = Machine.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to root_path 
    end
    
    def new
        @machine = Machine.new
    end

    def create
        @machine = Machine.new(machine_params)
        if @machine.save
            redirect_to @machine
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @machine = Machine.find(params[:id])
    end

    def update
        @machine = Machine.find(params[:id])
        if @machine.update(machine_params)
            redirect_to @machine
        else 
            render :edit, status: :unprocessable_entity
        end
        
    end

    def destroy
        @machine = Machine.find(params[:id])
        @machine.destroy
        redirect_to root_path
    end



    private

    def machine_params
        params.require(:machine).permit(:name, :description, :image)
    end 


end

