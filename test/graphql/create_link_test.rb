require 'test_helper'

class Resolvers::CreateLinkTest < ActiveSupport::TestCase
  def perform(args = {})
    Resolvers::CreateLink.new.call(nil, args, {})
  end

  test 'create new link' do
    link = perform(
      url: 'http://example.com',
      description: 'description',
    )

    assert link.persisted?
    asset_equal link.description, 'description'
    asset_equal link.url, 'http://example.com'
  end

end
