require 'spec_helper'

describe ::UserSkillRate::RateWithinRangeValidator do
  describe 'ensures proper range' do
    context 'when within range' do
      it 'pass validation' do
        user_skill_rate = build(:user_skill_rate)
        user_skill_rate.skill = build(:skill, :with_boolean_rate_type)
        user_skill_rate.rate = 1

        described_class.new.validate(user_skill_rate)

        result = user_skill_rate.errors.count
        expect(result).to eq(0)
      end
    end

    context 'when out of range' do
      it 'fails validation' do
        user_skill_rate = build(:user_skill_rate)
        user_skill_rate.skill = build(:skill, :with_boolean_rate_type)
        user_skill_rate.rate = 99

        described_class.new.validate(user_skill_rate)

        result = user_skill_rate.errors.full_messages
        expect(result).to include('Skill is not included in the list')
      end
    end
  end
end
