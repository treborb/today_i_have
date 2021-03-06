FactoryGirl.define do

  titles = ["Create an app", "Added a modal window", "Worked on CSS", "Improved the UX", "Worked on database relations", "Did some research", "Spoke with the client", "Refactored some code", "Fixed some bugs", "Started learning React"]
  details = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a nibh sed massa tincidunt mattis. Vestibulum dapibus eleifend luctus. Sed maximus augue id leo mattis porta. Nulla facilisi. Maecenas ultricies sapien ante, ultrices pellentesque lorem ornare sit amet. Pellentesque porta tellus malesuada libero euismod luctus. Aenean eu volutpat mi. In eu varius felis. Nunc aliquet erat ac viverra iaculis. Praesent eget orci varius, lacinia turpis."
  tags = %w(javascript css ruby react bootstrap rails jquery angular nodejs postgresql)

  sequence :title do |n|
    titles[n-1]
  end

  sequence :user_id do |n|
    n
  end

  sequence :tag_list do |n|
    two = []
    two << tags.shuffle[n-1]
    two << tags.shuffle[n-1]
    two
  end

  factory :update do
    title
    details details
    tag_list
    user_id
  end

end
