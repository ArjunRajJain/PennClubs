require 'spec_helper'

describe College do
  it 'requires name' do
  	subject.should_not be_valid
  	subject.name = "Penn"
  	subject.should be_valid
  end
end
