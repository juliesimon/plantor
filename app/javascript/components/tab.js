function showContentTab() {
  $('#myTabs a').on('click', function (e) {
    e.preventDefault()
    $(this).tab('show')
  })
}

export { showContentTab };
