// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function () {
  $("table > tbody > tr").hover(function(){
    $(this).addClass('hover-row')
  }, function() {
    $(this).removeClass('hover-row')
  });

  loadCinemalists();
  loadRailsAJAXCinemalists();
});

function loadRailsAJAXCinemalists() {
  $.get({
    url: 'http://localhost:3000/cinemalists.js'
  })
}

function loadCinemalists() {
  var table = document.getElementById('jscinemalists');
  table.appendChild(createLoadingElement());

  setTimeout(function() {
    $.get({
      url: 'http://localhost:3000/cinemalists.json',
      complete: function(result) {
        clearElement('jscinemalists');

        var cinemalists = $.parseJSON(result.responseText);

        // create header
        var container = createContainer('table');

        cinemalists.forEach(function(value) {

          var element = document.createElement('tr');
          var col = document.createElement('td');
          col.innerText = value.id;
          element.appendChild(col);

          col = document.createElement('td');
          col.innerText = value.name;
          element.appendChild(col);

          container.appendChild(element);
        });

        $('#jscinemalists')
          .append(container);
      }
    });
  }, 2000);
}

function createContainer(tagName) {
  var container = document.createElement(tagName);
  $(container).addClass('table');
  $(container).html("<tr><th>#</th><th>name</th></tr>");

  return container;0985332754
}

function clearElement(id) {
  var element = document.getElementById(id);
  element.innerText = "";
}

function createLoadingElement() {
  var element = document.createElement('div');

  element.innerText = "Loading...";

  return element;
}
