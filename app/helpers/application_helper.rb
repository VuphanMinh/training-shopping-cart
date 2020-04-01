module ApplicationHelper

  def custom_bootstrap_flash
    flash_messages = []
    flash.each do |type, message|
      type = 'success' if type == 'notice'
      type = 'error'   if type == 'alert'
      text = "<script> toastr.#{type}('#{message}');</script>"
      flash_messages << text.html_safe if message
    end
    flash_messages.join("\n").html_safe
  end

  def show_error(resource, field_name)
    return '' if resource.errors.empty? || resource.errors.full_messages_for(field_name).blank?
    content_tag(:div, resource.errors.full_messages_for(field_name).first, class: 'is-error invalid-feedback')
  end
end
