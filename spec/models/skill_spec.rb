require 'spec_helper'

describe Skill do
  it { is_expected.to belong_to :skill_category }
  it { is_expected.to have_many :users }
end
