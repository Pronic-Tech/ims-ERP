
    <!-- PAGE CONTENT BEGINS -->
<div class="">
    <div class="easy-link-menu align-right">
        <a class="btn-primary btn-sm" href="#" id="create_ledger_btn"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Create New Ledger</a>
        <a class="btn-primary btn-sm" href="#" id="search_ledger_btn"><i class="fa fa-search" aria-hidden="true"></i> Search</a>
    </div>
</div>
<hr class="hr-6">

<div id="create_ledger_form">
    <?php echo Form::open(['route' => $base_route.'.store', 'method' => 'POST', 'class' => 'form-horizontal',
    'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

        <?php echo $__env->make($view_path.'.includes.form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="clearfix form-actions align-right">
            <div class="col-md-12 align-right">
                <button class="btn btn-info" type="submit">
                    <i class=" fa fa-save bigger-110"></i>
                    Create
                </button>
            </div>
        </div>
    <?php echo Form::close(); ?>

    <div class="hr hr-18 dotted hr-double"></div>
</div>

<div id="search_ledger_form">
    <?php echo Form::open(['route' => $base_route, 'method' => 'GET', 'class' => 'form-horizontal',
   'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

    <?php echo $__env->make($view_path.'.includes.search-form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div class="clearfix form-actions align-right">
        <div class="col-md-12 align-right">
            <button class="btn btn-info" type="submit" id="filter-btn">
                <i class="fa fa-filter bigger-110"></i>
                Filter
            </button>
        </div>
    </div>
    <?php echo Form::close(); ?>

    <div class="hr hr-18 dotted hr-double"></div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/transaction/head/add.blade.php ENDPATH**/ ?>