<div class="row">

    <div class="col-xs-12 col-sm-3 center">
        <div>
            <span class="profile-picture">
                <?php if($data['student']->student_image != ''): ?>
                    <img id="avatar-small" class="editable img-responsive" alt="<?php echo e($data['student']->title, false); ?>" src="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'studentProfile'.DIRECTORY_SEPARATOR.$data['student']->student_image), false); ?>" />
                <?php else: ?>
                    <img id="avatar-small" class="editable img-responsive" alt="<?php echo e($data['student']->title, false); ?>" src="<?php echo e(asset('assets/images/avatars/profile-pic.jpg'), false); ?>" />
                <?php endif; ?>

            </span>

            <div class="space-4"></div>

        </div>
    </div>
    <div class="col-xs-12 col-sm-9">
        <div class="space-6"></div>
        <div class="profile-user-info profile-user-info-striped">
            <div class="profile-info-row">
                <div class="profile-info-name"> Reg. No.: </div>
                <div class="profile-info-value">
                    <span class="editable" id="reg_no"><a href="<?php echo e(route('student.view', ['id' => $data['student']->id]), false); ?>"><?php echo e($data['student']->reg_no, false); ?></a></span>
                </div>
                <div class="profile-info-name"> Uni. Reg.No. : </div>
                <div class="profile-info-value">
                    <span class="editable" id="student_name"><?php echo e($data['student']->univ_reg, false); ?></span>
                </div>
            </div>

            <div class="profile-info-row">
                <div class="profile-info-name"> Faculty: </div>
                <div class="profile-info-value">
                    <span class="editable" id="faculty"><?php echo e(ViewHelper::getFacultyTitle( $data['student']->faculty ), false); ?></span>
                </div>
                <div class="profile-info-name"> Semester :</div>
                <div class="profile-info-value">
                    <span class="editable" id="semester"><?php echo e(ViewHelper::getSemesterTitle( $data['student']->semester ), false); ?></span>
                </div>
            </div>

            <div class="profile-info-row">
                <div class="profile-info-name"> Name : </div>
                <div class="profile-info-value">
                    <span class="editable" id="student_name">
                        <a href="<?php echo e(route('student.view', ['id' => $data['student']->id]), false); ?>"> <?php echo e($data['student']->first_name.' '.$data['student']->middle_name.' '. $data['student']->last_name, false); ?></a>
                    </span>
                </div>
                <div class="profile-info-name"> Father Name : </div>
                <div class="profile-info-value">
                    <span class="editable" id="student_name">
                        <?php echo e($data['student']->father_first_name.' '.$data['student']->father_middle_name.' '.$data['student']->father_last_name, false); ?>

                    </span>
                </div>
            </div>

            <div class="profile-info-row">
                <div class="profile-info-name"> Mobile No. : </div>
                <div class="profile-info-value">
                    <span class="editable" id="student_name"><?php echo e($data['student']->mobile_1, false); ?></span>
                </div>

                <div class="profile-info-name"> E-mail : </div>
                <div class="profile-info-value">
                    <span class="editable" id="email"><?php echo e($data['student']->email, false); ?></span>
                </div>
            </div>


        </div>
    </div>
</div><!-- /.row -->
<hr class="hr-2">
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/collection/collect/includes/profile.blade.php ENDPATH**/ ?>