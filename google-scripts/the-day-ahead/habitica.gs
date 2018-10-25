function getTasks() {
  const params = {
    method: 'get',
    headers: {
      'x-api-user': habitica().id,
      'x-api-key': habitica().token
    }
  }
  var response = UrlFetchApp.fetch('https://habitica.com/api/v3/tasks/user?type=todos', params)

  var data = JSON.parse(response).data
  Logger.log(data)

  const list = data.map(function(task) {
    return '<li>' + task.text + '</li>'
  })

  return '<h2>Tasks</h2>\n' + list.length ? '<ul>' + list + '</ul>' : '<p>No tasks.</p>'
}

function habitica() {
  var str = '<h2>☑️ Tasks</h2>\n'
  str += getTasks()
  return str
}
