
<!-- Modal -->
<div class="modal fade" id="feeMasterAddModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <?php echo Form::open(['route' => 'account.fees.master.store', 'method' => 'POST', 'class' => 'form-horizontal',
                       'id' => 'validation-form', "enctype" => "multipart/form-data"]); ?>

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close top-close" data-dismiss="modal" id="close-button">×</button>
                <h4 class="modal-title title text-center fees_title" id="MasterTitle"><b>Add:</b> Fees</h4>
            </div>
            <div class="modal-body pb0">
                <div class="form-horizontal">
                    <div class="box-body">
                        <input type="hidden" name="chkIds[]" id="StudentsId" value="<?php echo e($data['student']->id, false); ?>"/>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-3 control-label">Due Date</label>
                            <div class="col-sm-9">
                                <?php echo Form::text('fee_due_date[]', null, ["placeholder" => "YYYY-MM-DD", "class" => "col-xs-10 col-sm-11 input-mask-date date-picker",'id'=>"date", "required"]); ?>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-3 control-label">Head</label>
                            <div class="col-sm-9">
                                <?php echo Form::select('fee_head[]', $data['fee_heads'], null, ['class' => 'form-control col-xs-10 col-sm-11 chosen-select', 'required','onChange' => 'setAmount(this);', 'style'=>'width:420px;'],$data['fee_head_attributes']); ?>

                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-3 control-label">Amount </label>
                            <div class="col-sm-9">
                                <?php echo Form::text('fee_amount[]', null, ["class" => "col-xs-10 col-sm-11 feeAmount" , "required"]); ?>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <div class="box-body">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn cfees btn-success" id="load" data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> Processing"> <i class="fa fa-plus" aria-hidden="true"></i> Add Fees </button>
                </div>
            </div>
        </div>
        <?php echo Form::close(); ?>

    </div>
</div><?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/account/fees/collection/collect/includes/fee_master_add_model.blade.php ENDPATH**/ ?>