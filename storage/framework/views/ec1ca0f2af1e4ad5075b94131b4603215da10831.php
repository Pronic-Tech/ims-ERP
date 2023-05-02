<div class="clearfix hidden-print ">
    <div class="easy-link-menu align-left ">
        <a class="<?php echo request()->is('mcq/question/index*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('mcq.question.index'), false); ?>"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Detail</a>
        <a class="<?php echo request()->is('mcq/question/add*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('mcq.question.add'), false); ?>"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Add</a>
        <a class="<?php echo request()->is('mcq/question/import*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('mcq.question.import'), false); ?>"><i class="fa fa-upload" aria-hidden="true"></i>&nbsp;Bulk Import</a>
        <a class="<?php echo request()->is('mcq/question/question-group*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('mcq.question.question-group'), false); ?>"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Group</a>
        <a class="<?php echo request()->is('mcq/question/question-level*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('mcq.question.question-level'), false); ?>"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Level</a>
    </div>
    <hr class="hr-6 ">
</div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/mcq/question/question-bank/includes/buttons.blade.php ENDPATH**/ ?>