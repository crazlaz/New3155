require 'rails_helper.rb'

feature "Blogger adds an article" do 
    scenario "Blogger succesffuly navigates to the new articles page from the listing articles page " do 
        visit articles_path 
        expect(page).to have_content("Listing articles")
        click_link "New article"
        expect(page).to have_content("New article")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
        
    end 
    
    scenario "Blogger succesffuly creates a new article  " do
        visit new_article_path
        expect(page).to have_content("New article")
        fill_in "Title", with: "New Capybara Article" 
        fill_in "Text", with: "This is a new Capybara article"
        click_button "Create Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
    end 
end 
        