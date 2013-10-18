require 'spec_helper'

describe "StaticPages" do
  include Capybara::DSL

  describe "Home page" do
    subject { page }
    before { visit root_path }

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title("#{full_title('')} | ") }
  end

  describe "Help page" do
    subject { page }
    before { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    subject { page }
    before { visit about_path }

    it { should have_selector('h1', text: 'About Us') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contacts page" do
    subject { page }
    before { visit contacts_path }

    it { should have_selector('h1', text: 'Contacts') }
    it { should have_title(full_title('Contacts')) }
  end
end
