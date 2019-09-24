RSpec.describe Country, type: :model do
  it 'has a valid factory' do
    expect(create(:country)).to be_valid
  end
  
  it 'should be invalid with no code' do
    expect(build(:country, code: nil)).not_to be_valid
  end
  
  it 'should be invalid with duplicate code' do
    c = create(:country)
    expect(build(:country, code: c.code)).not_to be_valid
  end
end
