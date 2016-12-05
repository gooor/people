require 'spec_helper'

describe Skill do
  it { is_expected.to belong_to :skill_category }
  it { is_expected.to have_many :users }

  it { is_expected.to  validate_presence_of :name }
  it { is_expected.to  validate_presence_of :skill_category }
  it { is_expected.to  validate_presence_of :rate_type }

  describe 'uniques validation' do
    let(:category) { create(:skill_category) }

    before { create(:skill, name: 'foo', skill_category: category) }

    it 'ensurs uniques by name & category' do
      skill = build(:skill, name: 'foo', skill_category: category)
      expect(skill.valid?).to be false
      expect(skill.errors.messages).to eq :'name & skill_category' => ['must be uniq']
    end
  end
end
