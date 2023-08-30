module Api
    module V1
        class MachinesController < ApplicationController
 
            skip_before_action :verify_authenticity_token

            def index
                render json: Machine.all
            end
        
            def show
                render json: Machine.find(params[:id])
            end
            
            def create
                @machine = Machine.new(machine_params)
                if @machine.save
                    render json: @machine.reload, status: 200
                else
                    render json: {errors: @machine.errors }, status: 400
                end
            end
            
            def update
                @machine = Machine.find(params[:id])
                if @machine
                    @machine.update(machine_params)
                    render json: 'Machine updated successfully', status: 200
                else
                    render error: 'unable to create Machine' , status: 400
                end
            end
            
            def destroy
                @machine = Machine.find(params[:id])
                @machine.destroy
                    render json: "Machine deleted succesfully"
            end

            private
            def machine_params
            params.require(:machine).permit(:name, :description)
            end

        end
    end
  end