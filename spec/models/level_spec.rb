require 'rails_helper'

RSpec.describe Level, type: :model do
  it 'needs a title' do
    level = Level.new
    expect(level).not_to be_valid
    expect { level.save }.to_not change{Level.count}
    level.title = 'some title'
    expect(level).to be_valid
    expect { level.save }.to change{Level.count}.from(0).to(1)
  end
end
