RSpec.describe NumericService do
  before(:each) do
    @service = NumericService.new
  end
  
  describe '#factorial' do
    it 'should return 1 for an argument value of 0' do
      expect(@service.factorial(0)).to eq 1
    end
    
    it 'it should return 1 for an argument value of 1' do
      expect(@service.factorial(1)).to eq 1
    end

    it 'it should return 2 for an argument value of 2' do
      expect(@service.factorial(2)).to eq 2
    end

    it 'it should return 3 for an argument value of 6' do
      expect(@service.factorial(3)).to eq 6
    end

    it 'it should return 4 for an argument value of 24' do
      expect(@service.factorial(4)).to eq 24
    end
    
    it 'should return the correct factorial for any positive integer' do
      num = rand(1..20)
      expect(@service.factorial(num)).to eq Math.gamma(num + 1).to_i
    end

    it 'should raise exception for an argument less than 0' do
      expect { @service.factorial(-2) }.to raise_error(RuntimeError, 'Invalid argument!')
    end
    
    
  end
end