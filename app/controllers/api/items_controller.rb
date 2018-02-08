# frozen_string_literal: true

class Api::ItemsController < ApplicationController
  # before_action :set_item, only: [:show, :update, :destroy]

  def index
    @items = Item.includes(:listing)
  end

  def create
  end
end