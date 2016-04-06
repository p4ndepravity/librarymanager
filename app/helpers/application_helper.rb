module ApplicationHelper
  def delete_link(object, type)
    message = "Are you sure you want to delete this #{type}"
    url = "/#{type}s/#{object.id}"
    link_to(url, 
            method: :delete, 
            data: {toggle: 'modal',
                   target: '#deleteModal', 
                   confirm: message, 
                   ok: 'Confirm', 
                   cancel: 'Cancel'},
            class: 'tooltip-delete') do
      content_tag(:div, 
                  class: 'glyphicon glyphicon-remove-sign', 
                  data: {toggle: 'tooltip', 
                         placement: 'top', 
                         'original-title' => 'Delete'}) do
      end
    end
  end

  def edit_link(object, type)
    url = "/#{type}s/#{object.id}/edit"
    link_to(url,
            data: {remote: true,
                   toggle: 'modal',
                   target: '#editModal',
                   ok: 'Submit',
                   cancel: 'Cancel'},
            class: 'tooltip-edit') do
      content_tag(:div,
                  class: 'fa fa-wrench',
                  data: {toggle: 'tooltip',
                         placement: 'top',
                         'original-title' => 'Edit'}) do
      end
    end
  end

  def new_link(type, class_string, label)
    url = "/#{type}s/new"
    link_to(label,
            url,
            data: {remote: true,
                   toggle: 'modal',
                   target: "#newModal",
                   reset: 'Reset',
                   ok: 'Submit',
                   cancel: 'Cancel'},
            class: class_string)
  end

  def show_link(object, type)
    url = "/#{type}s/#{object.id}"
    link_to(url,
            data: {remote: true,
                   toggle: 'modal',
                   target: '#showModal',
                   ok: 'OK'},
            class: 'tooltip-show') do
      content_tag(:div,
                  class: 'glyphicon glyphicon-info-sign',
                  data: {toggle: 'tooltip',
                         placement: 'top',
                         'original-title' => 'Show'}) do
      end
    end
  end

  def checkout_btn(book)
    url = "/books/#{book.id}/transactions/new"
    link_to(url,
            data: {remote: true,
                   toggle: 'modal',
                   target: '#checkOutModal',
                   ok: 'Submit',
                   cancel: 'Cancel'},
            class: 'tooltip-checkout') do
      content_tag(:div,
                  class: 'glyphicon glyphicon-log-out',
                  data: {toggle: 'tooltip',
                         placement: 'top',
                         'original-title' => 'Check Out'}) do
      end
    end
  end

end
