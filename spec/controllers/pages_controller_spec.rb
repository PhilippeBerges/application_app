require 'spec_helper'

describe PagesController do
 render_views
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
   it "doit avoir le bon titre" do
     get 'home'
     response.should have_selector("title", :content => "App du tuto rails|Accueil")
end
end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  it "doit avoir le bon titre" do
     get 'contact'
     response.should have_selector("title", :content => "App du tuto rails|Contact")
end  
end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  it "doit avoir le bon titre" do
     get 'about'
     response.should have_selector("title", :content => "App du tuto rails|About")
end
  end

end
