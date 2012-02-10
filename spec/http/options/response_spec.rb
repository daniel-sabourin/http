require 'spec_helper'

describe Http::Options, "response" do

  let(:opts){ Http::Options.new }

  it 'defaults to :object' do
    opts.response.should eq(:object)
  end

  it 'may be specified with with_response' do
    opts2 = opts.with_response(:body)
    opts.response.should eq(:object)
    opts2.response.should eq(:body)
  end

  it 'recognizes invalid responses' do
    lambda{ 
      opts.with_response(:not_a_valid_response)
    }.should raise_error(ArgumentError, /not_a_valid_response/)
  end

end

