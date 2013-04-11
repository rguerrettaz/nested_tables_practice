require 'spec_helper'

describe Survey do

  subject { create(:survey) }
  it { should have_many :questions }
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }

  describe "integration survey"
    

end
