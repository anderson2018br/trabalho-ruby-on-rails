+function ($) {

    $(document).ready(function() {
        // $('#table_id').DataTable({
        //     "language": {
        //         "info": "Mostrando Página _PAGE_ de _PAGES_",
        //         "search": "Procurar:",
        //         "paginate": {
        //             "next": "Próxima Página",
        //             "Previous": "Página Anterior"
        //         }
        //     },
        //
        // });
        // $('.dataTables_length').hide();
        // $('.dataTables_filter input').addClass('form-control');

        $('.js-header-search-toggle').on('click', function() {
            $('.search-bar').slideToggle();

        });
    });

}(jQuery);
