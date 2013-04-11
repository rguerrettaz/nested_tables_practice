require 'spec_helper'

describe Question do

  subject { create(:question) }

  it { should validate_presence_of(:content) }
  it { should belong_to(:survey) }
  it { should have_many(:choices) }

end
