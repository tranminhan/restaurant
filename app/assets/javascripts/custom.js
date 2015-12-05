$( document ).ready(function() {
  $("button#price-up").click(function() {
    window.location.href = window.location.pathname + "?sort=price+asc"
  });
  $("button#price-down").click(function() {
    window.location.href = window.location.pathname + "?sort=price+desc"
  });
  $("button#name-az").click(function() {
    window.location.href = window.location.pathname + "?sort=name+asc"
  });
});