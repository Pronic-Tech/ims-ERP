<h4 class="header large lighter blue"><i class="fa fa-university" aria-hidden="true"></i>Academic Info</h4>

<div class="form-group">
    <div class="table-responsive">
        <table id="responsive" class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th>Sort</th>
                    <th>Detail</th>
                    <th>

                    </th>
                </tr>
            </thead>

            <tbody id="academicInfo_wrapper">

            <?php if(isset($data['academicInfo-html'])): ?>
                <?php echo $data['academicInfo-html']; ?>

            <?php endif; ?>

            </tbody>
            <tfoot>
            <tr>
                <td colspan="3">
                    <button type="button" class="btn btn-xs btn-primary" id="load-academicinfo-html">
                        <i class="fa fa-plus" aria-hidden="true"></i> New Academic Info
                    </button>
                </td>
            </tr>
            </tfoot>

        </table>
    </div>
</div>


<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/student/registration/includes/forms/academicinfo.blade.php ENDPATH**/ ?>