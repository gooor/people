require 'spec_helper'

describe SkillCategory do
  it { is_expected.to have_many :skills }
  it { is_expected.to have_and_belong_to_many :roles }
end
