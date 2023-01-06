$(document).ready(function()
      {
        $('#anime').DataTable({
                'info': false,
                'lengthMenu': [4, 8, 16],
                'rowReorder': true,
                'order': [],
                'columnDefs': [
                    { orderable: true, className: 'reorder', targets: 1 },
                    { orderable: true, className: 'reorder', targets: 2 },
                    { orderable: true, className: 'reorder', targets: 3 },
                    { orderable: false, targets: '_all' }
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
                }
            });
            });