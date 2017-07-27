require 'rails_helper'

feature "User can leave review for pro" do
  context "pro has an accepted bid on the users closed project" do
    it "they can leave a review" do
      category = create(:category)
      service = create(:service, category_id: category.id)
      user = create(:user)
      pro = create(:pro_user)
      pro2 = create(:pro_user)
      pro_service = pro.pro_services.create(service: service, pro: pro, radius: 100)
      pro_service = pro.pro_services.create(service: service, pro: pro2, radius: 100)
      project1 = create(:project, service_id: service.id, requester_id: user.id, status: 2)
      bid = project1.bids.create(user_id: pro.id, amount: "100", comment: "I can help.", status: 1)
      bid2 = project1.bids.create(user_id: pro2.id, amount: "350", comment: "I need money", status: 2)

      #User should be able to leave a review for pro
    end
  end

  context "pro has an accepted bid on the users accepted project" do
    it "they cannot leave a review" do
      category = create(:category)
      service = create(:service, category_id: category.id)
      user = create(:user)
      pro = create(:pro_user)
      pro2 = create(:pro_user)
      pro_service = pro.pro_services.create(service: service, pro: pro, radius: 100)
      pro_service = pro.pro_services.create(service: service, pro: pro2, radius: 100)
      project1 = create(:project, service_id: service.id, requester_id: user.id, status: 1)
      bid = project1.bids.create(user_id: pro.id, amount: "100", comment: "I can help.", status: 1)
      bid2 = project1.bids.create(user_id: pro2.id, amount: "350", comment: "I need money", status: 2)

      #User should not be able to leave a review for pro
    end
  end

  context "pro does not have an accepted bid with the user's project" do
    it "they cannot leave a review" do
      category = create(:category)
      service = create(:service, category_id: category.id)
      user = create(:user)
      pro = create(:pro_user)
      pro2 = create(:pro_user)
      pro_service = pro.pro_services.create(service: service, pro: pro, radius: 100)
      pro_service = pro.pro_services.create(service: service, pro: pro2, radius: 100)
      project1 = create(:project, service_id: service.id, requester_id: user.id, status: 2)
      bid = project1.bids.create(user_id: pro.id, amount: "100", comment: "I can help.", status: 1)
      bid2 = project1.bids.create(user_id: pro2.id, amount: "350", comment: "I need money", status: 2)

      #User should not be able to leave a review for pro2
    end
  end

