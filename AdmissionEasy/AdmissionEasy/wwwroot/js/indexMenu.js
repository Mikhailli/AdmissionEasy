$(document).ready(function()
      {
        $('#anime').DataTable({
                'info': false,
                'lengthMenu': [4, 8, 16],
                'rowReorder': true,
                'order': [],
                'columnDefs': [
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
                },
                        'fnRowCallback': function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
                          $('td', nRow);
                }
            });
            });

            jQuery('.htag').click(function() {
    var txt = jQuery(this).text(); // Получаем текст элемента на который был клик
    jQuery('input[type="search"]').val(txt); // Вставляем полученный ранее текст в поле поиска
    jQuery('input[type="search"]').trigger('input'); // Имитируем событие ввода для запуска фильтра
});