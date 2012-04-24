require 'spec/spec_helper.rb'

describe Zendesk::Configuration do
  subject { Zendesk::Configuration.new }

  it "should properly merge options" do
    url = "test.host"
    subject.url = url
    subject.options[:url].should == url
  end

  it "should set accept header properly" do
    subject.options[:headers][:accept].should == 'application/json'
  end

  it "should set user agent header properly" do
    subject.options[:headers][:user_agent].should =~ /Zendesk API/
  end
end