require_relative '../encounters'

describe Encounters do
  # hmmm - how to test?
  it 'does not move if direction is unknown' do
    expect(Encounters.new.next(false, false)).to eq ['nothing interesting',
                                                     0,
                                                     false,
                                                     nil]
  end
end

