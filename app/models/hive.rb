# frozen_string_literal: true

# app/models/hive.rb
class Hive < ApplicationRecord
  validates :name, presence: true
  validates :weight, presence: true
  validates_length_of :name, minimum: 6
end
