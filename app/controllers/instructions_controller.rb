class InstructionsController < ApplicationController
    before_action :set_instruction, only: [:show, :update, :destroy]
  
    def index
      @instructions = Instruction.all
  
      render json: @instructions, status: :ok
    end
  
    def show
      render json: @instruction, status: :ok
    end
  
    def create
      @instruction = Instruction.new(instruction_params)
      @instruction.recipe = Recipe.find(params[:recipe_id])
      @instruction.save!
  
      render json: @instruction, statue: :created
    end
  
    def update
      @instruction.update(instruction_params)
      head :no_content
    end
  
    def destroy
      @instruction.destroy
      head :no_content
    end
  
    private
  
    def instruction_params
      params.permit(:name, :order_number)
    end
  
    def set_instruction
      @instruction = Instruction.find(params[:id])
    end
  
  end
  