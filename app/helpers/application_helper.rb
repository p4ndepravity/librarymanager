module ApplicationHelper
  def delete_link(object, type)
    message = "Are you sure you want to delete this #{type}"
    link_to(object, 
            method: :delete, 
            data: {toggle: 'modal', 
                   target: '#deleteModal', 
                   confirm: message, 
                   ok: 'Confirm', 
                   cancel: 'Cancel'},
            class: 'tooltip-delete') do
      content_tag(:div, 
                  class: 'fa fa-times-circle', 
                  data: {toggle: 'tooltip', 
                         placement: 'top', 
                         'original-title' => 'Delete'}) do
      end
    end
  end
end
