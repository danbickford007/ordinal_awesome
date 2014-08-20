require_relative "../lib/ordinal_awesome"

describe OrdinalAwesome do

  let(:array) { (1..99).to_a }
  let(:empty_array) { [] }

  context 'when an array contains a value at an ordinal' do

    it 'should return array index at 1' do
      expect(array.second).to eq(array[1])
    end

    it 'should return array index at 2' do
      expect(array.third).to eq(array[2])
    end

    it 'should return array index at 3' do
      expect(array.fourth).to eq(array[3])
    end
    
    it 'should return array index at 4' do
      expect(array.fifth).to eq(array[4])
    end
    
    it 'should return array index at 5' do
      expect(array.sixth).to eq(array[5])
    end
    
    it 'should return array index at 6' do
      expect(array.seventh).to eq(array[6])
    end
    
    it 'should return array index at 7' do
      expect(array.eighth).to eq(array[7])
    end
    
    it 'should return array index at 8' do
      expect(array.ninth).to eq(array[8])
    end
    
    it 'should return array index at 9' do
      expect(array.tenth).to eq(array[9])
    end
    
    it 'should return array index at 10' do
      expect(array.eleventh).to eq(array[10])
    end
    
    it 'should return array index at 11' do
      expect(array.twelfth).to eq(array[11])
    end
  
  end

  context 'when an array is empty' do

    it 'should return nil' do
      expect(empty_array.third).to be_nil
    end

  end
end
