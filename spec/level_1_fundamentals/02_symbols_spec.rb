require 'level_1_fundamentals/02_symbols'

describe 'Level 1.2 – Symbols' do
  it 'to_status converts a String to a Symbol' do
    expect(to_status('active')).to eq :active
    expect(to_status('on_hold')).to eq :on_hold
  end

  it 'humanize makes a readable label' do
    expect(humanize(:done)).to eq 'Done'
    expect(humanize(:in_progress)).to eq 'In progress'
    expect(humanize(:waiting_for_review)).to eq 'Waiting for review'
  end

  it 'symbolize_keys converts the keys only' do
    expect(symbolize_keys({ 'a' => 1, 'b' => 'two' })).to eq({ a: 1, b: 'two' })
    expect(symbolize_keys({})).to eq({})
  end

  it 'same_object? shows the difference between Symbols and Strings' do
    expect(same_object?(:a, :a)).to eq true
    expect(same_object?('a'.dup, 'a'.dup)).to eq false
    s = 'a'.dup
    expect(same_object?(s, s)).to eq true
  end

  it 'tally_statuses counts occurrences' do
    expect(tally_statuses(%i[open done open open])).to eq({ open: 3, done: 1 })
    expect(tally_statuses([])).to eq({})
  end

  it 'symbols_only filters by type' do
    expect(symbols_only([1, :a, 'b', :c, nil])).to eq %i[a c]
    expect(symbols_only(['x', 2])).to eq []
  end
end
