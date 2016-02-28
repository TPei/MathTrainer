require 'rails_helper'

RSpec.describe Operator, type: :model do
  it 'validates presence of title' do
    op = Operator.new(
      level_id: 1,
      operator_name: 'something',
      sign: 'something',
      min_number: 0,
      max_number: 100
    )
    expect(op).not_to be_valid
    expect { op.save }.to_not change{Operator.count}
    op.title = 'some title'
    expect(op).to be_valid
    expect { op.save }.to change{Operator.count}.by(1)
  end
  
  it 'validates presence of level_id' do
    op = Operator.new(
      title: 'totally',
      operator_name: 'something',
      sign: 'something',
      min_number: 0,
      max_number: 100
    )
    expect(op).not_to be_valid
    expect { op.save }.to_not change{Operator.count}
    op.level_id = 1
    expect(op).to be_valid
    expect { op.save }.to change{Operator.count}.by(1)
  end

  it 'validates presence of operator_name' do
    op = Operator.new(
      title: 'totally',
      level_id: 1,
      sign: 'something',
      min_number: 0,
      max_number: 100
    )
    expect(op).not_to be_valid
    expect { op.save }.to_not change{Operator.count}
    op.operator_name = 'present!'
    expect(op).to be_valid
    expect { op.save }.to change{Operator.count}.by(1)
  end

  it 'validates presence of sign' do
    op = Operator.new(
      title: 'totally',
      level_id: 1,
      operator_name: 'something',
      min_number: 0,
      max_number: 100
    )
    expect(op).not_to be_valid
    expect { op.save }.to_not change{Operator.count}
    op.sign = 'present!'
    expect(op).to be_valid
    expect { op.save }.to change{Operator.count}.by(1)
  end

  it 'validates presence of min_number' do
    op = Operator.new(
      title: 'totally',
      level_id: 1,
      operator_name: 'yeah',
      sign: 'something',
      max_number: 100
    )
    expect(op).not_to be_valid
    expect { op.save }.to_not change{Operator.count}
    op.min_number = 0
    expect(op).to be_valid
    expect { op.save }.to change{Operator.count}.by(1)
  end

  it 'validates presence of max_number' do
    op = Operator.new(
      title: 'totally',
      level_id: 1,
      operator_name: 'yeah',
      sign: 'something',
      min_number: 0
    )
    expect(op).not_to be_valid
    expect { op.save }.to_not change{Operator.count}
    op.max_number = 100
    expect(op).to be_valid
    expect { op.save }.to change{Operator.count}.by(1)
  end

  it 'validates that max_number >= min_number' do
    op = Operator.new(
      title: 'totally',
      level_id: 1,
      operator_name: 'yeah',
      sign: 'something',
      min_number: 10,
      max_number: 0
    )
    expect(op).not_to be_valid
    expect { op.save }.to_not change{Operator.count}
    op.max_number = 100
    expect(op).to be_valid
    expect { op.save }.to change{Operator.count}.by(1)
  end
end
