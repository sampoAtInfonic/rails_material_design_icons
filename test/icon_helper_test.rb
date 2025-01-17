# frozen_string_literal: true

require 'test_helper'

module MaterialDesignIcons
  class IconHelperTest < ActionView::TestCase
    test '#md_icon with no args should render a sheep icon' do
      assert_icon i('mdi mdi-sheep')
    end

    test '#md_icon should render different individual icons' do
      assert_icon i('mdi mdi-flag'),         'flag'
      assert_icon i('mdi mdi-camera-retro'), 'camera-retro'
      assert_icon i('mdi mdi-cog'),          'cog'
      assert_icon i('mdi mdi-github'),       'github'
    end

    private

    def assert_icon(expected, *args)
      message = "`mdi_icon(#{args.inspect[1...-1]})` should return `#{expected}`"
      assert_dom_equal expected, mdi_icon(*args), message
    end

    def i(classes)
      %(<i class="#{classes}"></i>)
    end
  end
end
