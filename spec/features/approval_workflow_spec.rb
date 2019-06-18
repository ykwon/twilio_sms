require 'rails_helper'

describe 'navigate' do
    before do
        @adminUser = FactoryBot.create(:admin_user)
        login_as(@admin_user, :scope => :user)
    end

    describe 'edit' do
        before do
            @post = FactoryBot.create(:post)
            visit edit_post_path(@post)
        end

        # it 'has a status that can be edited on the form' do
        #     visit edit_post_path(@post)
        #     check 'post_status_approved'
        #     click_on 'Save'
        #     expect(@post.reload.status).to eq('approved')
        # end
        
        it 'cannot be edited by a non admin' do
            logout(:user)
            user=FactoryBot.create(:user)
            login_as(user,:scope=> :user)
            visit edit_post_path(@post)
            expect(page).to_not have_content(root_path)
        end

    end
end
