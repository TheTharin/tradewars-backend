# frozen_string_literal: true

class Api::ItemsController < ApplicationController
  # before_action :set_item, only: [:show, :update, :destroy]

  def index
    @items = Item.joins(:listing).limit(10)
  end

  def create
  end
end