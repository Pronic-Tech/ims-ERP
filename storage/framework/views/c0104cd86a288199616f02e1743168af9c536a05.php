<?php echo $__env->make('print.includes.print-layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<style>
    span.receipt-copy {
        font-size: 22px;
        font-weight: 600;
        background: black;
        color: white;
        padding: 3px 15px;
    }

    th{
        border-bottom: none !important;
        background: none !important;
        color: black;
    }
    .table-striped th{
        background: #d8d8d8 !important;
    }

    table th.head{
        background: #d8d8d8 !important;
        border-bottom: 1px solid black !important;
    }
    @media  print {
       /* thead {display: table-row;}*/
        .main-content{
            page-break-after:always !important;
        }
    }
</style><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/print/student-fee/includes/receipt-css.blade.php ENDPATH**/ ?>