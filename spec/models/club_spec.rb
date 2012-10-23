require 'spec_helper'

describe Club do
  it 'requires all params' do
  	subject.should_not be_valid
  	subject.name = "Club Swimming"
  	subject.contact = "2159066309"
  	subject.description = "We Swim!"
  	subject.url = "www.clubswimmming.com"
  	subject.should be_valid
  end
end