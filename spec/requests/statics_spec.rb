require 'spec_helper'

require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end
end




=begin
describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end
	
	it "should have custome page title" do
	  visit root_path
	  page.should_not have_selector('title',
						:text => '| Home')
	end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
  
  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                    text: "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
=end


=begin

require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
     it "should have the content 'Sample App'" do
	visit '/static_pages/home'
	page.should have_content ('Sample App')
	end  
  end

  describe "Help page" do
    it "should have the content 'Help'" do
    visit '/static_pages/help'
    page.should have_content ('Help')	
    end
  end   
  
  describe "About page" do
    it "should have the content 'About us'" do
	visit '/static_pages/about'
	page.should have_content ('About us')
	end
  end

  it "should have the right title" do
  visit 'static_pages/home'
  page.should have_selector('title', :text=> 'Ruby on Rails Tutorial Sample App | Home')
  end
end
=end


#describe "Statics" do
 # describe "GET /statics" do
  #  it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
   #   get statics_path
    #  response.status.should be(200)
    #end
  #end
#end
