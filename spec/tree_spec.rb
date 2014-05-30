require 'spec_helper'

describe Tree do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:species) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:image_data) }

  it { should validate_numericality_of(:height).is_greater_than_or_equal_to(0)}
  it { should validate_numericality_of(:height).is_less_than_or_equal_to(1000)}

  it { should validate_numericality_of(:latitude).is_greater_than_or_equal_to(-75)}
  it { should validate_numericality_of(:latitude).is_less_than_or_equal_to(75)}

  it { should validate_numericality_of(:longitude).is_greater_than_or_equal_to(-175)}
  it { should validate_numericality_of(:longitude).is_less_than_or_equal_to(175)}
end
