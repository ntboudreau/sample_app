require 'spec_helper'

describe "LayoutLinks" do
  
  it "should have a home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "home")
  end
  
  it "should have a contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "contact")
  end
  
  it "should have an about page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "about")
  end
  
  it "should have a help page at '/help'" do
    get '/help'
    response.should have_selector('title', :content => "help")
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "sign up")
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "about"
    response.should have_selector("title", :content => "about")
    click_link "help"
    response.should have_selector("title", :content => "help")
    click_link "contact"
    response.should have_selector("title", :content => "contact")
    click_link "home"
    response.should have_selector("title", :content => "home")
    click_link "sign up now!"
    response.should have_selector("title", :content => "sign up")
  end

end
