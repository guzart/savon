require "spec_helper"

describe Savon do

  describe "VERSION" do
    it "contains the current version of the library" do
      Savon::VERSION.should be_a String
      Savon::VERSION.should_not be_empty
    end
  end

  describe "SOAPVersions" do
    it "contains an Array of supported SOAP versions" do
      Savon::SOAPVersions.should be_an Array
      Savon::SOAPVersions.should_not be_empty
    end
  end

  describe "SOAPDateTimeFormat" do
    it "contains the xs:dateTime format" do
      Savon::SOAPDateTimeFormat.should be_a String
      Savon::SOAPDateTimeFormat.should_not be_empty

      UserFixture.datetime_object.strftime(Savon::SOAPDateTimeFormat).
        should == UserFixture.datetime_string
    end
  end

  describe "SOAPDateTimeRegexp" do
    it "contains a Regexp matching the xs:dateTime format" do
      Savon::SOAPDateTimeRegexp.should be_a Regexp
      (Savon::SOAPDateTimeRegexp === UserFixture.datetime_string).
        should be_true
    end
  end

end
