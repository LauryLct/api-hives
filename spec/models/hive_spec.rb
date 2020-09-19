# frozen_string_literal: true

# spec/models/hive_spec.rb
require 'rails_helper'

RSpec.describe Hive, type: :model do
  it 'is valid' do
    expect(Hive.new(name: 'nom de ruche', weight: 45)).to be_valid
  end

  it 'is not valid' do
    hive = Hive.new(name: 'ruche', weight: 45)
    expect(hive).to_not be_valid
    expect(hive.errors.messages[:name]).to eq ['is too short (minimum is 6 characters)']
  end
end
