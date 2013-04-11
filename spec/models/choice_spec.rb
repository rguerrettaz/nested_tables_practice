require 'spec_helper'

describe Choice do
  subject { create :choice }

  it { should belong_to :question }
  it { should validate_presence_of :value }

end
