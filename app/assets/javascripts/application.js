//= require jquery
//= require jquery_ujs

var MoviePopup = {
  setup: function() {
    // add hidden 'div' to end of page to display popup:
    var popupDiv = $('<div id="movieInfo"></div>');
    popupDiv.hide().appendTo($('body'));
    $(document).on('click', '#movies a', MoviePopup.getMovieInfo);
  }
  ,getMovieInfo: function() {
    $.ajax({type: 'GET',
            url: $(this).attr('href'),
            timeout: 5000,
            success: MoviePopup.showMovieInfo,
            error: function(xhrObj, textStatus, exception) { alert('Error!'); }
            // 'success' and 'error' functions will be passed 3 args
           });
    return(false);
  }
  ,showMovieInfo: function(data, requestStatus, xhrObject) {
    // center a floater 1/2 as wide and 1/4 as tall as screen
    $('#movieInfo').
      html(data).
      show();
    // make the Close link in the hidden element work
    $('#closeLink').click(MoviePopup.hideMovieInfo);
    return(false);  // prevent default link action
  }
  ,hideMovieInfo: function() {
    $('#movieInfo').hide();
    return(false);
  }
};
$(MoviePopup.setup);

var MovieListFilter = {
  filter_G: function () {
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(G).is(':checked')) {
      $('tr.G').show();
    } else {
      $('tr.G').hide();
    };
  },
  filter_PG: function () {
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(PG).is(':checked')) {
      $('tr.PG').show();
    } else {
      $('tr.PG').hide();
    };
  },
  filter_PG_13: function () {
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(PG_13).is(':checked')) {
      $('tr.PG-13').show();
    } else {
      $('tr.PG-13').hide();
    };
  },
  filter_R: function () {
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(R).is(':checked')) {
      $('tr.R').show();
    } else {
      $('tr.R').hide();
    };
  },
  filter_NC: function () {
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(this).is(':checked')) {
      $('tr.NC-17').show();
    } else {
      $('tr.NC-17').hide();
    };
  },
  setup: function() {
    // construct checkbox with label
    var labelAndCheckbox =
      $('<label for="filter">Rating: </label>' +
        '<input type="checkbox" id="G" checked=true>G' +
        '<input type="checkbox" id="PG" checked=true>PG' +
        '<input type="checkbox" id="PG_13" checked=true>PG-13' +
        '<input type="checkbox" id="R" checked=true>R' +
        '<input type="checkbox" id="NC" checked=true>NC-17<br>' );
    labelAndCheckbox.insertBefore('#movies');
    $('#G').change(MovieListFilter.filter_G);
    $('#PG').change(MovieListFilter.filter_PG);
    $('#PG_13').change(MovieListFilter.filter_PG_13);
    $('#R').change(MovieListFilter.filter_R);
    $('#NC').change(MovieListFilter.filter_NC);
  }
}
$(MovieListFilter.setup); // run setup function when document ready