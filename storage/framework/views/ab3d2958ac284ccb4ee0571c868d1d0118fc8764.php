<!DOCTYPE html>
<html lang="en">

<body class="no-skin">
<div class="main-container ace-save-state" id="main-container">
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">

                <div class="page-header hidden-print">
                    <h1>
                        Student
                        <small>
                            <i class="ace-icon fa fa-angle-double-right"></i>
                            Detail
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12 ">
                        <!-- PAGE CONTENT BEGINS -->
                        <div class="space-2"></div>

                        <div id="user-profile-2" class="user-profile">
                            <div class="tabbable tabs-left">
                                <ul class="nav nav-tabs  padding-18 hidden-print ">
                                    <li class="active">
                                        <a data-toggle="tab" href="#profile">
                                            <i class="green ace-icon fa fa-user bigger-140"></i>
                                            Profile
                                        </a>
                                    </li>
                                </ul>

                                <div class="tab-content no-border padding-24">
                                    <div id="profile" class="tab-pane in active">
                                        <div class="row text-center">
                                            <div class="row" >
                                                <div class="col-md-1 align-left" style="height: 100px;">
                                                    <?php if(isset($generalSetting->logo)): ?>
                                                        <img src="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.'setting'.DIRECTORY_SEPARATOR.'general'.DIRECTORY_SEPARATOR.$generalSetting->logo), false); ?>" width="100px">
                                                    <?php endif; ?>
                                                </div>
                                                <div class="col-md-11 text-center">
                                                    
                                                    <h6 class="no-margin-top" style="font-size: 14px">
                                                        <?php echo e(isset($generalSetting->salogan)?$generalSetting->salogan:"", false); ?>

                                                    </h6>
                                                    <h2 class="no-margin-top text-uppercase" style="font-family: 'Bowlby+One+SC'; font-size: 30px; font-weight: 600">
                                                        <strong><?php echo e(isset($generalSetting->institute)?$generalSetting->institute:"", false); ?></strong>
                                                    </h2>
                                                    <h5 class="no-margin-top" style="font-size: 16px;">
                                                        <?php echo e(isset($generalSetting->address)?$generalSetting->address:"", false); ?>, <?php echo e(isset($generalSetting->phone)?$generalSetting->phone:"", false); ?>

                                                    </h5>
                                                    <h5 class="no-margin-top" style="font-size: 16px;">
                                                        <?php echo e(isset($generalSetting->email)?$generalSetting->email:"", false); ?>, <?php echo e(isset($generalSetting->website)?$generalSetting->website:"", false); ?>

                                                    </h5>

                                                </div>
                                            </div>
                                            <div class="space-4"></div>
                                            <h2 class="no-margin-top text-uppercase" style="font-family: 'Bowlby+One+SC'; font-size: 30px; font-weight: 600">
                                                <strong>REGISTRATION DETAIL</strong>
                                            </h2>
                                        </div>
                                        <hr class="hr-double hr-8">


                                        <div class="row">

                                            <div class="col-xs-12 col-sm-3 col-print-3">
                                                <div>
                                                    <span class="profile-picture">
                                                       <?php if($data['student']->student_image != ''): ?>
                                                            <img id="avatar" class="editable img-responsive" alt="<?php echo e($data['student']->title, false); ?>" src="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.$folder_name.DIRECTORY_SEPARATOR.$data['student']->student_image), false); ?>" width="250px" />
                                                        <?php else: ?>
                                                            <img id="avatar" class="editable img-responsive" alt="<?php echo e($data['student']->title, false); ?>" src="<?php echo e(asset('assets/images/avatars/profile-pic.jpg'), false); ?>" />
                                                        <?php endif; ?>
                                                    </span>

                                                    <?php if($data['student']->student_signature != ''): ?>
                                                        <span class="profile-picture align-center">
                                                                <img class="editable img-responsive" alt="<?php echo e($data['student']->title, false); ?>" src="<?php echo e(asset('images'.DIRECTORY_SEPARATOR.$folder_name.DIRECTORY_SEPARATOR.$data['student']->student_signature), false); ?>" width="150px" />
                                                        </span>
                                                    <?php else: ?>

                                                    <?php endif; ?>

                                                    <div class="space-4"></div>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-9 col-print-9">

                                                <div class="space-3"></div>
                                                <div class="label label-info label-xlg arrowed-in arrowed-right arrowed"><?php echo e($data['student']->first_name.' '.
                    $data['student']->middle_name.' '.$data['student']->last_name, false); ?></div>
                                                <div class="space-6"></div>
                                                <div class="profile-user-info profile-user-info-striped">
                                                    <div class="profile-info-row">
                                                        <?php if($data['student']->faculty !=""): ?>
                                                            <div class="profile-info-name"> Faculty/Class: </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="faculty"><?php echo e(ViewHelper::getFacultyTitle( $data['student']->faculty ), false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                        <?php if($data['student']->semester != ""): ?>
                                                            <div class="profile-info-name"> Sem./Sec. :</div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="semester"><?php echo e(ViewHelper::getSemesterTitle( $data['student']->semester ), false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                    </div>
                                                    <div class="profile-info-row">
                                                        <?php if($data['student']->batch !=""): ?>
                                                            <div class="profile-info-name"> Session/Batch: </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="faculty"><?php echo e(ViewHelper::getStudentBatchId( $data['student']->batch ), false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                    </div>

                                                    <div class="profile-info-row">
                                                        <?php if($data['student']->reg_no != ""): ?>
                                                            <div class="profile-info-name"> Reg. No.: </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="reg_no"><?php echo e($data['student']->reg_no, false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                        <?php if($data['student']->reg_date !=""): ?>
                                                            <div class="profile-info-name"> Reg. Date :</div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="reg_date"><?php echo e(\Carbon\Carbon::parse($data['student']->reg_date)->format('d/m/Y'), false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                    </div>


                                                    <div class="profile-info-row">
                                                        <?php if($data['student']->university_reg != ""): ?>
                                                            <div class="profile-info-name"> Univ.Reg.: </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="university_reg"><?php echo e($data['student']->university_reg, false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                        <?php if($data['student']->date_of_birth != ""): ?>
                                                            <div class="profile-info-name"> DOB : </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="date_of_birth"><?php echo e(\Carbon\Carbon::parse($data['student']->date_of_birth)->format('d/m/Y'), false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                    </div>

                                                    <div class="profile-info-row">
                                                        <?php if($data['student']->gender != ""): ?>
                                                            <div class="profile-info-name"> Gender : </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="gender"><?php echo e($data['student']->gender, false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                        <?php if($data['student']->blood_group != ""): ?>
                                                            <div class="profile-info-name"> Blood Group : </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="blood_group"><?php echo e($data['student']->blood_group, false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                    </div>

                                                    <div class="profile-info-row">
                                                        <?php if($data['student']->religion !=""): ?>
                                                            <div class="profile-info-name"> Religion:</div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="religion"><?php echo e($data['student']->religion, false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                        <?php if($data['student']->caste !=""): ?>
                                                            <div class="profile-info-name"> Caste : </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="caste"><?php echo e($data['student']->caste, false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                    </div>

                                                    <div class="profile-info-row">
                                                        <?php if($data['student']->nationality): ?>
                                                            <div class="profile-info-name"> Nationality : </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="nationality"><?php echo e($data['student']->nationality, false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                        <?php if($data['student']->mother_tongue !=""): ?>
                                                            <div class="profile-info-name"> Mother Tongue: </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="mother_tongue"><?php echo e($data['student']->mother_tongue, false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                    </div>

                                                    <div class="profile-info-row">
                                                        <?php if($data['student']->email !=""): ?>
                                                            <div class="profile-info-name"> E-mail : </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="email"><?php echo e($data['student']->email, false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                        <?php if($data['student']->mobile_1 !=""): ?>
                                                            <div class="profile-info-name"> Mobile No : </div>
                                                            <div class="profile-info-value">
                                                                <span class="editable" id="email"><?php echo e($data['student']->mobile_1.','.$data['student']->mobile_2, false); ?></span>
                                                            </div>
                                                        <?php endif; ?>
                                                    </div>
                                                </div>

                                            </div>
                                        </div><!-- /.row -->
                                        <div class="row">
                                            <div class="space-6"></div>
                                            <div class="label label-info label-xlg arrowed-in arrowed-right arrowed">Permanent Address</div>
                                            <div class="space-6"></div>
                                            <div class="profile-user-info profile-user-info-striped">
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->address !=""): ?>
                                                        <div class="profile-info-name"> Address : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="permanent_place"><?php echo e($data['student']->address, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                            <div class="profile-user-info profile-user-info-striped">
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->state !=""): ?>
                                                        <div class="profile-info-name"> State :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="permanent_district"><?php echo e($data['student']->state, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->country !=""): ?>
                                                        <div class="profile-info-name"> Country : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="permanent_zone"><?php echo e($data['student']->country, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                            </div>

                                            <div class="space-6"></div>
                                            <div class="label label-info label-xlg arrowed-in arrowed-right arrowed">Temporary Address</div>
                                            <div class="space-6"></div>
                                            <div class="profile-user-info profile-user-info-striped">
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->temp_address !=""): ?>
                                                        <div class="profile-info-name"> Address : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="permanent_place"><?php echo e($data['student']->temp_address, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                            <div class="profile-user-info profile-user-info-striped">
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->temp_state !=""): ?>
                                                        <div class="profile-info-name"> State :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="permanent_district"><?php echo e($data['student']->temp_state, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->temp_country !=""): ?>
                                                        <div class="profile-info-name"> Country : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="permanent_zone"><?php echo e($data['student']->temp_country, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                            </div>

                                            <div class="space-6"></div>
                                            <div class="label label-info label-xlg arrowed-in arrowed-right arrowed">Parential Info</div>
                                            <?php if($data['student']->grandfather_first_name !=""): ?>
                                                <div class="space-6"></div>
                                                <div class="profile-user-info profile-user-info-striped">
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name"> Grand Father :  </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="temporary_place"><?php echo e($data['student']->grandfather_first_name.' '.$data['student']->grandfather_middle_name.' '.$data['student']->grandfather_last_name, false); ?></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php endif; ?>
                                            <div class="space-6"></div>
                                            <div class="profile-user-info profile-user-info-striped">
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->father_first_name !=""): ?>
                                                        <div class="profile-info-name"> Father Name :  </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="temporary_place"><?php echo e($data['student']->father_first_name.' '.$data['student']->father_middle_name.' '.$data['student']->father_last_name, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->father_eligibility !=""): ?>
                                                        <div class="profile-info-name"> Eligibility :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="father_eligibility"><?php echo e($data['student']->father_eligibility, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->father_occupation !=""): ?>
                                                        <div class="profile-info-name"> Occupation :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="father_occupation"><?php echo e($data['student']->father_occupation, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->father_office !=""): ?>
                                                        <div class="profile-info-name"> Office :  </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="father_office"><?php echo e($data['student']->father_office, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->father_office_number !=""): ?>
                                                        <div class="profile-info-name"> Office Num. :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="father_office_number"><?php echo e($data['student']->father_office_number, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->father_residence_number !=""): ?>
                                                        <div class="profile-info-name"> Residence : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="father_residence_number"><?php echo e($data['student']->father_residence_number, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->father_mobile_1 !=""): ?>
                                                        <div class="profile-info-name"> Mobile 1 :  </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="father_mobile_1"><?php echo e($data['student']->father_mobile_1, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->father_mobile_2 !=""): ?>
                                                        <div class="profile-info-name"> Mobile 2 :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="father_mobile_2"><?php echo e($data['student']->father_mobile_2, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->father_email !=""): ?>
                                                        <div class="profile-info-name"> E-mail : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="father_email"><?php echo e($data['student']->father_email, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                            </div>

                                            <div class="space-6"></div>
                                            <div class="profile-user-info profile-user-info-striped">
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->mother_first_name !=""): ?>
                                                        <div class="profile-info-name"> Mother Name :  </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="temporary_place"><?php echo e($data['student']->mother_first_name.' '.$data['student']->mother_middle_name.' '.$data['student']->mother_last_name, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->mother_eligibility !=""): ?>
                                                        <div class="profile-info-name"> Eligibility :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="mother_eligibility"><?php echo e($data['student']->mother_eligibility, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->mother_occupation !=""): ?>
                                                        <div class="profile-info-name"> Occupation :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="mother_occupation"><?php echo e($data['student']->mother_occupation, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->mother_office !=""): ?>
                                                        <div class="profile-info-name"> Office :  </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="mother_office"><?php echo e($data['student']->mother_office, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->mother_office_number !=""): ?>
                                                        <div class="profile-info-name"> Office Num. :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="mother_office_number"><?php echo e($data['student']->mother_office_number, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->mother_residence_number !=""): ?>
                                                        <div class="profile-info-name"> Residence : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="mother_residence_number"><?php echo e($data['student']->mother_residence_number, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->mother_mobile_1 !=""): ?>
                                                        <div class="profile-info-name"> Mobile 1 :  </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="mother_mobile_1"><?php echo e($data['student']->mother_mobile_1, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->mother_mobile_2 !=""): ?>
                                                        <div class="profile-info-name"> Mobile 2 :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="mother_mobile_2"><?php echo e($data['student']->mother_mobile_2, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->mother_email !=""): ?>
                                                        <div class="profile-info-name"> E-mail : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="mother_email"><?php echo e($data['student']->mother_email, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                            </div>

                                            <div class="space-6"></div>
                                            <div class="label label-info label-xlg arrowed-in arrowed-right arrowed">Guardian Info</div>
                                            <div class="space-6"></div>
                                            <div class="profile-user-info profile-user-info-striped">
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->guardian_first_name !=""): ?>
                                                        <div class="profile-info-name"> Guardian Name :  </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="temporary_place"><?php echo e($data['student']->guardian_first_name.' '.$data['student']->guardian_middle_name.' '.$data['student']->guardian_last_name, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->guardian_eligibility !=""): ?>
                                                        <div class="profile-info-name"> Eligibility :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="guardian_eligibility"><?php echo e($data['student']->guardian_eligibility, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->guardian_occupation !=""): ?>
                                                        <div class="profile-info-name"> Occupation :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="guardian_occupation"><?php echo e($data['student']->guardian_occupation, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->guardian_office !=""): ?>
                                                        <div class="profile-info-name"> Office :  </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="guardian_office"><?php echo e($data['student']->guardian_office, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->guardian_office_number !=""): ?>
                                                        <div class="profile-info-name"> Office Num. :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="guardian_office_number"><?php echo e($data['student']->guardian_office_number, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->guardian_residence_number !=""): ?>
                                                        <div class="profile-info-name"> Residence : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="guardian_residence_number"><?php echo e($data['student']->guardian_residence_number, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->guardian_mobile_1 !=""): ?>
                                                        <div class="profile-info-name"> Mobile 1 :  </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="guardian_mobile_1"><?php echo e($data['student']->guardian_mobile_1, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->guardian_mobile_2 !=""): ?>
                                                        <div class="profile-info-name"> Mobile 2 :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="guardian_mobile_2"><?php echo e($data['student']->guardian_mobile_2, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->guardian_email !=""): ?>
                                                        <div class="profile-info-name"> E-mail : </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="guardian_email"><?php echo e($data['student']->guardian_email, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                                <div class="profile-info-row">
                                                    <?php if($data['student']->guardian_relation !=""): ?>
                                                        <div class="profile-info-name"> Relation :  </div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="guardian_relation"><?php echo e($data['student']->guardian_relation, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                    <?php if($data['student']->guardian_address !=""): ?>
                                                        <div class="profile-info-name"> Address :</div>
                                                        <div class="profile-info-value">
                                                            <span class="editable" id="mother_mobile_2"><?php echo e($data['student']->guardian_address, false); ?></span>
                                                        </div>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div><!-- /#home -->
                                </div>
                            </div>

                        </div>
                        <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
</div>

</body>
</html>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/student/generate-pdf/index.blade.php ENDPATH**/ ?>