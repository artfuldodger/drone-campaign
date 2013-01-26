$ ->
  $('form select#state_id').change (e) ->
    $('#caucus-members-in-state').html('')
    state_id = $(@).val()
    $.get '/representatives',
      { 'state_id': state_id },
      (representatives) ->
        $('#caucus-members-in-state').html('<ul></ul>')
        $.each representatives, (index, representative) ->
          console.log representative
          name     = representative.name
          url      = representative.url
          district = representative.district
          # TODO: Backbone + templates. This is unfortunate.
          list_element = "<li><a href='#{url}' target='_blank'>#{name}</a>"
          list_element += " (district #{district})" if district?
          list_element += "</li>"
          $('#caucus-members-in-state ul').append(list_element)
