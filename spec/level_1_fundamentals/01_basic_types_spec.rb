require 'level_1_fundamentals/01_basic_types'

describe 'Level 1.1 – Basic types' do
  it 'integer_division drops the remainder (and floors negatives)' do
    expect(integer_division(7, 2)).to eq 3
    expect(integer_division(10, 5)).to eq 2
    expect(integer_division(-7, 2)).to eq(-4)
  end

  it 'float_division returns a Float' do
    expect(float_division(7, 2)).to eq 3.5
    expect(float_division(1, 4)).to eq 0.25
    expect(float_division(6, 3)).to be_a Float
  end

  it 'remainder_of returns what is left over' do
    expect(remainder_of(17, 5)).to eq 2
    expect(remainder_of(10, 5)).to eq 0
  end

  it 'last_char returns the final character' do
    expect(last_char('hello')).to eq 'o'
    expect(last_char('a')).to eq 'a'
  end

  it 'shout upcases and adds an exclamation mark' do
    expect(shout('hi')).to eq 'HI!'
    expect(shout('Ruby rocks')).to eq 'RUBY ROCKS!'
  end

  it 'value_or_default only replaces nil' do
    expect(value_or_default(nil, 5)).to eq 5
    expect(value_or_default(3, 5)).to eq 3
    expect(value_or_default(false, 5)).to eq false
  end

  it 'second_element returns the 2nd item or nil' do
    expect(second_element([1, 2, 3])).to eq 2
    expect(second_element([1])).to be_nil
    expect(second_element([])).to be_nil
  end

  it 'lookup finds a key or says unknown' do
    expect(lookup({ a: 1, b: 2 }, :b)).to eq 2
    expect(lookup({ a: 1 }, :z)).to eq 'unknown'
    expect(lookup({ 'name' => 'Ada' }, 'name')).to eq 'Ada'
  end

  it 'class_name_of returns the class as a String' do
    expect(class_name_of(42)).to eq 'Integer'
    expect(class_name_of(3.0)).to eq 'Float'
    expect(class_name_of('x')).to eq 'String'
    expect(class_name_of(:x)).to eq 'Symbol'
    expect(class_name_of(nil)).to eq 'NilClass'
    expect(class_name_of([])).to eq 'Array'
    expect(class_name_of({})).to eq 'Hash'
  end
end
