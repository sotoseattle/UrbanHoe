module WelcomeHelper
  def radio_truthy(radio_value)
    (@fam == radio_value) ? 'checked="true"' : ''
  end
end
