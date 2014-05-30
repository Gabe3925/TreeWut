require 'spec_helper'

describe 'User can see a homepage' do

  it 'has the title Tree-Wut!' do
    visit root_path
    expect(page).to have_content 'Tree-Wut!'
  end

end
