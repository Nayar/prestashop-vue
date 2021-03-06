/* global $ */
$(document).ready(function () {
  var $searchWidget = $('#search_widget')
  var $searchBox = $searchWidget.find('input[type=text]')
  var searchURL = $searchWidget.attr('data-search-controller-url')

  $.widget('prestashop.psBlockSearchAutocomplete', $.ui.autocomplete, {
    _renderItem: function (ul, product) {
      return $('<li>')
        .append($('<a>')
          .append($('<span>').html(product.category_name).addClass('category'))
          .append($('<span>').html(' > ').addClass('separator'))
          .append($('<span>').html(product.name).addClass('product'))
      ).appendTo(ul)
    }
  })

  `
  <a>
    <span class="badge badge-secondary mr-1">${product.manufacturer_name}</span>
    <span class="badge badge-secondary">${product.reference}</span>
    <h5 class="mt-2">${product.name}</span>
    <span class="h5 text-primary">${product.regular_price}</span>
    <p>${product.description_short}</p>
  </a>
  `

  $searchBox.psBlockSearchAutocomplete({
    source: function (query, response) {
      $.post(searchURL, {
        s: query.term,
        resultsPerPage: 10
      }, null, 'json')
        .then(function (resp) {
          console.log(resp.products)
          response(resp.products)
        })
        .fail(response)
    },
    select: function (event, ui) {
      var url = ui.item.url
      window.location.href = url
    }
  })
})
