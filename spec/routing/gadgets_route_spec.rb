require 'spec_helper'
describe 'routing to gadgets' do

  it 'GET /gadgets routes to gadgets#index' do
    expect(:get => '/gadgets').to route_to(
                                     :controller => 'gadgets',
                                     :action => 'index'
                                 )
  end

  it 'GET /gadgets/search routes to gadgets#index' do
    expect(:get => '/gadgets/search').to route_to(
                                     :controller => 'gadgets',
                                     :action => 'search'
                                 )
  end

end