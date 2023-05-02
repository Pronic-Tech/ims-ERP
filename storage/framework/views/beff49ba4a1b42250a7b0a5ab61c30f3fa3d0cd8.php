<div class="easy-link-menu align-right">
    <a class="btn-primary btn-sm " href="<?php echo e(route('online-registration.registration'), false); ?>" target="_blank"><i class="fa fa-file" aria-hidden="true"></i>&nbsp;Show Online Registration Form</a>
</div>


<div class="form-group">
    <label class="col-sm-2 control-label" for="status"> Registration Status </label>
    <div class="col-sm-10">
        <?php echo Form::select('status', ['active'=>'Open','in-active'=>'Close'], null, ['class' => 'form-control border-form']); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('range', 'Open & Close Date', ['class' => 'col-sm-2 control-label']); ?>

    <div class=" col-sm-3">
        <div class="input-group ">
            <?php echo Form::text('start_date', null, ["placeholder" => "", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

            <span class="input-group-addon">
                <i class="fa fa-exchange"></i>
            </span>
            <?php echo Form::text('end_date', null, ["placeholder" => "", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

        </div>
    </div>
</div>

<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('title', 'Title', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::text('title', null, ["placeholder" => "", "class" => "form-control border-form"]); ?>


        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'title'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<?php if(isset($data['row'])): ?>
    <div class="form-group">
        <label class="col-sm-2 control-label">Existing Logo</label>
        <div class="col-sm-9">
            <?php if($data['row']->logo): ?>
                <img src="<?php echo e(asset('images/setting/'.$folder_name.'/'.$data['row']->logo), false); ?>" >
            <?php else: ?>
                <p>No image.</p>
            <?php endif; ?>
        </div>
    </div>
<?php endif; ?>
<div class="space-4"></div>
<div class="form-group">
    <?php echo Form::label('logo_image', 'Logo', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-9">
        <?php echo Form::file('logo_image'); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'logo_image'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>


<div class="space-4"></div>
<div class="form-group">
    <label class="col-sm-2 control-label" for="rules_status"> Rules Status </label>
    <div class="col-sm-10">
        <?php echo Form::select('rules_status', ['1'=>'Show','0'=>'Hide'], null, ['class' => 'form-control border-form ']); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'rules_status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('rules', 'Rules Info', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::textarea('rules', null, ["placeholder" => "", "class" => "form-control border-form summernote"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'rules'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <label class="col-sm-2 control-label" for="agreement_status"> Agreement Status </label>
    <div class="col-sm-10">
        <?php echo Form::select('agreement_status', ['1'=>'Show','0'=>'Hide'], null, ['class' => 'form-control border-form']); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'agreement_status'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('agreement', 'Agreement Info', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::textarea('agreement', null, ["placeholder" => "", "class" => "form-control border-form summernote"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'agreement'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>


<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('registration_guidelines', 'Registration Guideline Info', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::textarea('registration_guidelines', null, ["placeholder" => "", "class" => "form-control border-form summernote"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'registration_guidelines'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>

<div class="space-4"></div>

<div class="form-group">
    <?php echo Form::label('registration_close_message', 'Registration Close Message', ['class' => 'col-sm-2 control-label']); ?>

    <div class="col-sm-10">
        <?php echo Form::textarea('registration_close_message', null, ["placeholder" => "", "class" => "form-control border-form summernote"]); ?>

        <?php echo $__env->make('includes.form_fields_validation_message', ['name' => 'registration_close_message'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>


<div class="form-group">
    <table class="table-bordered text-center" WIDTH="100%">
        <thead>
            <tr>
                <th>Faculty/Class</th>
                <th width="30%">Start & End Date</th>
                <th width="20%">Status</th>
                <th width="10%">
                    <button type="button" class="btn btn-xs btn-primary pull-right" id="add-program-html">
                        <i class="fa fa-plus bigger-120"></i> Add Registration Program
                    </button>
                </th>
            </tr>
        </thead>

        <tbody id="program_wrapper">
            <?php if(isset($data['exist_program']) && $data['exist_program']->count() > 0): ?>
                <?php $__currentLoopData = $data['exist_program']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $program): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php echo $__env->make($view_path.'.includes.program_tr_edit', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
        </tbody>

    </table>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/setting/online-registration/includes/form.blade.php ENDPATH**/ ?>