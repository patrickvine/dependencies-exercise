require_relative '../direction'

describe Direction do
  # hmmm - how to test?
  it 'does not move if direction is unknown' do
    expect(Direction.new.next('my surroundings')).to eq ['You do not move',
                                                     'my surroundings',
                                                     false,
                                                     false]
  end
end

