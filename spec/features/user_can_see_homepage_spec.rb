require 'spec_helper'

describe 'User can see a homepage' do

  it 'has the title tree-wut' do
    visit root_path
    expect(page).to have_content 'tree-wut'
  end

end
