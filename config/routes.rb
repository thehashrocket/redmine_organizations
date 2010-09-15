ActionController::Routing::Routes.draw do |map|
  map.resources :organizations, :member => {:add_users => :post,
                                            :remove_user => :post,
                                            :autocomplete_for_user => :post}
  map.resources :organization_memberships, :only => [:create,:update,:destroy],
                                           :new => {:create_in_project => :post},
                                           :member => {:update_roles => :put,
                                                       :destroy_in_project => :delete}
end
