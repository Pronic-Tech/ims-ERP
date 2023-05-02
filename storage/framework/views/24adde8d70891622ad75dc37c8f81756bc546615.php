    <h4 class="header large lighter blue"><i class="fa fa-search" aria-hidden="true"></i>&nbsp;Filter User Activity</h4>

        <div class="clearfix">
            <div class="form-group">
                <label class="col-sm-1 control-label">User</label>
                <div class="col-sm-3">
                    <?php echo Form::select('user', $data['users'], null, ['class' => 'form-control chosen-select']); ?>

                </div>

                <label class="col-sm-1 control-label">Event</label>
                <div class="col-sm-2">
                    <?php echo Form::select('event', [""=>"Events","created"=>"Created","updated"=>"Updated","deleted"=>"Deleted"], null, ['class' => 'form-control']); ?>

                </div>
                <?php echo Form::label('url', 'URL', ['class' => 'col-sm-1 control-label']); ?>

                <div class="col-sm-4">
                    <?php echo Form::text('url', null, ["class" => "form-control border-form"]); ?>

                </div>
            </div>

            <div class="form-group">
                <?php echo Form::label('ip', 'IP Address', ['class' => 'col-sm-2 control-label']); ?>

                <div class="col-sm-4">
                    <?php echo Form::text('ip', null, ["class" => "form-control border-form"]); ?>

                </div>

                <?php echo Form::label('user_agent', 'User Agent', ['class' => 'col-sm-2 control-label']); ?>

                <div class="col-sm-4">
                    <?php echo Form::text('user_agent', null, ["class" => "form-control border-form"]); ?>

                </div>
            </div>

            <div class="form-group">
                <?php echo Form::label('created_at', 'Created At', ['class' => 'col-sm-2 control-label']); ?>

                <div class="col-sm-4">
                    <div class="input-group ">
                        <?php echo Form::text('created_at_start_date', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

                        <span class="input-group-addon">
                            <i class="fa fa-exchange"></i>
                        </span>
                        <?php echo Form::text('created_at_end_date', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

                    </div>
                </div>

                <?php echo Form::label('updated_at', 'Updated At', ['class' => 'col-sm-2 control-label']); ?>

                <div class="col-sm-4">
                    <div class="input-group ">
                        <?php echo Form::text('updated_at_start_date', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

                        <span class="input-group-addon">
                            <i class="fa fa-exchange"></i>
                        </span>
                        <?php echo Form::text('updated_at_end_date', null, ["placeholder" => "YYYY-MM-DD", "class" => "input-sm form-control border-form input-mask-date date-picker", "data-date-format" => "yyyy-mm-dd"]); ?>

                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix form-actions">
            <div class="col-md-12 align-right">        &nbsp; &nbsp; &nbsp;
                <button class="btn btn-info" type="submit" id="filter-btn">
                            <i class="fa fa-filter bigger-110"></i>
                            Filter
                        </button>
            </div>
        </div>


<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/super-suit/user-activity/includes/form.blade.php ENDPATH**/ ?>