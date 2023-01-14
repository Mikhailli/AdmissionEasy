var table

function GetNumberEnd(num) {
    if (num % 100 === 11 || num % 100 === 12 || num % 100 === 13 || num % 100 === 14)
        return (num + " мест");
    else if (num % 10 === 1)
        return (num + " место");
    else if (num % 10 === 2 || num % 10 === 3 || num % 10 === 4)
        return (num + " места");
    else
        return (num + " мест");
}

function buildDataTable()
      {
        table = $('#anime').DataTable(
            {
                'info': false,
                'lengthMenu': [4, 8, 16],
                'rowReorder': true,
                'order': [],
                "processing": true,
                "serverSide": true,
                "filter": true,
                "ajax": {
                "url": `/Directions/get`,
                "type": "POST"
                },
                'columnDefs': [
                    { orderable: true, className: 'reorder', targets: 1 },
                    { orderable: true, className: 'reorder', targets: 2 },
                    { orderable: true, className: 'reorder', targets: 3 },
                    { orderable: false, targets: '_all' }
                ],
            "columns": [
                { 
                    data: null,
                    name: 'firstColumn',
                    render: function(data)
                    {
                    return `
                            <td> 
                                <div class="educationAreaInfo" style="width: calc(100% - 150px); text-align: left; font-family: Roboto;"> 
                                    <div> 
                                        <a class="spectitle" style="font-family: Roboto; font-size: 18px;">` + data.educationAreaTitle + `</a> 
                                    </div> 
                                    <div> 
                                        <i>` + data.educationLevelTitle + ` | ` + data.educationFormTitle + `</i> 
                                    </div> 
                                    <div> ЕГЭ: 
                                        <span>` + data.subjects + `</span> 
                                    </div> 
                                </div> 
                            </td>`
                    }
                },
                { 
                    data: null, 
                    name: 'Cost', 
                    render: function(data)
                    {
                        return`
                          <td>
                            <div style="text-align: center;">
                              <a class="tooltipq" title="минимальная стоимость по специальности (руб/год)">
                                  от ` + data.cost + `
                                  ₽
                              </a>
                              <span class="yearVuzInfoSpan">
                                  <a class="tooltipq fixToolT" title="информация о стоимости за 2023 год">
                                      ` + data.year + `
                                  </a>
                              </span>
                            </div>
                          </td>`
                    }
                },
                { 
                    data: null, 
                    name: 'PassingScoreOnBudget', 
                    render: function(data)
                    {
                        return`
                        <td>
                          <div style="text-align: center;">
                              <a class="tooltipq" title="минимальный суммарный проходной балл">
                                  от ` + data.passingScoreOnBudget + `
                              </a>
                              <span class="yearVuzInfoSpan">
                                  <a class="tooltipq fixToolT" title="информация о количестве мест за 2023 год">
                                      ` + data.year + `
                                  </a>
                              </span>
                          </div>
                          <div style="text-align: center;">
                              <a class="tooltipq" style="font-size: 11px; color: gray;" title="количество бюджетных мест на специальность">
                                  ` + GetNumberEnd(data.numberOfPlacesOnBudget) + `
                              </a>
                          </div>
                        </td>
                        `
                    }
                },
                { 
                    data: null, 
                    name: 'PassingScoreOnPaid', 
                    render: function(data)
                    {
                        return`
                        <td>
                          <div style="text-align: center;">
                              <a class="tooltipq" title="минимальный суммарный проходной балл">
                                  от ` + data.passingScoreOnPaid + `
                              </a>
                                  <span class="yearVuzInfoSpan">
                                      <a class="tooltipq fixToolT" title="информация о количестве мест за 2023 год">
                                          ` + data.year + `
                                      </a>
                                  </span>
                          </div>
                          <div style="text-align: center;">
                              <a class="tooltipq" style="font-size: 11px; color: gray;" title="количество платных мест на специальность">
                                  ` + GetNumberEnd(data.numberOfPlacesOnPaid) + `
                              </a>
                          </div>
                        </td>
                        `
                    }
                }
            ],
                'language':
                {
                  'search': 'Поиск',
                  'lengthMenu': 'Показать _MENU_ элементов',
                  'zeroRecords': 'Совпадений не найдено',
                  'processing': 'Данные загружаются...',
                  'paginate':
                  {
                      'previous': '<',
                      'next': '>'
                  }
                },
                searchPanes: {
                    viewTotal: true
                }
        }).page('first').draw('page');
      }

function searchInColumn(columnIndex, searchPattern) {
    table.columns(columnIndex).search(searchPattern).draw();
}

