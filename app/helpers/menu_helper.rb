include ActionView::Helpers::NumberHelper

module MenuHelper
  def format_with_thousand_separator(number)
    ActionView::Helpers::NumberHelper.number_with_delimiter(number)
  end
end
