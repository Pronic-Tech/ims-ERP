<div class="row">
    <div class="col-xs-12">
        <h4 class="header large lighter blue"><i class="fa fa-list" aria-hidden="true"></i>&nbsp;<?php echo e($panel, false); ?> List <em>( If you have new SMS Company/API send API detail on freelancerumeshnepal@gmail.com for Integration.)</em></h4>
        <div class="clearfix">
            <span class="pull-right tableTools-container"></span>
        </div>
    <!-- div.table-responsive -->
        <div>
            <?php if(isset($data['smsSetting']) && $data['smsSetting']->count() > 0): ?>
                <?php $__currentLoopData = $data['smsSetting']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Gateway): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <a href="#<?php echo e($Gateway->identity, false); ?>" class=""><span class="text-uppercase label label-info" style="margin-bottom: 5px !important;"># <?php echo e($Gateway->identity, false); ?></span></a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
        </div>
        <div class="table-responsive">
            <table  class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th width="3%">S.N.</th>
                        <th width="20%">Gateway</th>
                        <th>Config</th>
                        <th width="5%"></th>
                        <th width="5%">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(isset($data['smsSetting']) && $data['smsSetting']->count() > 0): ?>
                        <?php ($i = 1); ?>
                        <?php $__currentLoopData = $data['smsSetting']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $Gateway): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                            <?php echo Form::model($Gateway, ['route' => [$base_route.'.update', $Gateway->id], 'method' => 'POST', 'class' => 'form-horizontal', 'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

                                <tr>
                                <td><?php echo e($i, false); ?></td>
                                <td>
                                    <a href="<?php echo e($Gateway->link, false); ?>" target="_blank">
                                        <img id="avatar" class="editable img-responsive" alt="<?php echo e($Gateway->identity, false); ?>" src="<?php echo e(asset('assets/images/smsgateway/'.$Gateway->logo.'.png'), false); ?>" width="300px" />
                                    </a>
                                </td>
                                <td>
                                    <p class="text-uppercase label label-warning arrowed-right arrowed-in" id="<?php echo e($Gateway->identity, false); ?>" ><?php echo e($Gateway->identity, false); ?></p>
                                    <hr class="hr-2">
                                    <?php ($configuarations = json_decode($Gateway->config, true)); ?>
                                    <?php if(isset($configuarations)): ?>
                                        <?php $__currentLoopData = $configuarations; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $conf): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <label class="col-sm-4 control-label"><?php echo e($key, false); ?></label>
                                            <div class="col-sm-8">
                                                <input type="text" value="<?php echo e($conf, false); ?>" name="<?php echo e($key, false); ?>" <?php echo e($Gateway->status=="active"?"":"disabled", false); ?> class="form-control border-form">
                                            </div>
                                            <hr class="hr-2">
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                </td>
                                    <td>
                                        <button class="btn btn-info" type="submit">
                                            <i class="fa fa-save bigger-110"></i>
                                            Update
                                        </button>
                                    </td>
                                <td>
                                    <div class="btn-group">
                                        <button data-toggle="dropdown" class="btn btn-primary btn-minier dropdown-toggle <?php echo e($Gateway->status == 'active'?"btn-info":"btn-warning", false); ?>" >
                                            <?php echo e($Gateway->status == 'active'?"Active":"In Active", false); ?>

                                            <span class="ace-icon fa fa-caret-down icon-on-right"></span>
                                        </button>

                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="<?php echo e(route($base_route.'.active', ['id' => $Gateway->id]), false); ?>" title="Active"><i class="fa fa-check" aria-hidden="true"></i> Active</a>
                                            </li>

                                            <li>
                                                <a href="<?php echo e(route($base_route.'.in-active', ['id' => $Gateway->id]), false); ?>" title="In-Active"><i class="fa fa-remove" aria-hidden="true"></i> In-Active</a>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                            <?php echo Form::close(); ?>

                            <?php ($i++); ?>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    <?php else: ?>
                        <tr><td colspan="7">No data found.</td></tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/setting/sms/includes/table.blade.php ENDPATH**/ ?>