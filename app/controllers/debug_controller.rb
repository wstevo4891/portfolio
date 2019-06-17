require 'coderay'

class DebugController < ApplicationController
  include ApplicationHelper

  def index
    ex = Exhibit.find_by_slug('javascript')
    @foo = coderay(ex.body, :javascript)
  end
end
