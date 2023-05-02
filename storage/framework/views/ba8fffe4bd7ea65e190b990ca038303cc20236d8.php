<div class="clearfix hidden-print ">
    <div class="easy-link-menu align-right">
        <a class="<?php echo request()->is('mcq/exam*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('mcq.exam.index'), false); ?>"><i class="fa fa-line-chart" aria-hidden="true"></i>&nbsp;Exam</a>
        <a class="<?php echo request()->is('mcq/exam/exam-instruction*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('mcq.exam.exam-instruction'), false); ?>"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;Instruction</a>
        <a class="<?php echo request()->is('mcq/question*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('mcq.question.index'), false); ?>"><i class="fa fa-question" aria-hidden="true"></i>&nbsp;Question</a>
        <a class="<?php echo request()->is('mcq/question/question-group*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('mcq.question.question-group'), false); ?>"><i class="fa fa-question" aria-hidden="true"></i>&nbsp;Group</a>
        <a class="<?php echo request()->is('mcq/question/question-level*')?'btn-success':'btn-primary'; ?> btn-sm" href="<?php echo e(route('mcq.question.question-level'), false); ?>"><i class="fa fa-question" aria-hidden="true"></i>&nbsp;Level</a>
    </div>
</div>
<hr class="hr-6"><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/mcq/includes/buttons.blade.php ENDPATH**/ ?>