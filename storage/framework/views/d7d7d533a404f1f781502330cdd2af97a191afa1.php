<div id="sidebar" class="sidebar h-sidebar navbar-collapse collapse ace-save-state hidden-print">
    <script type="text/javascript">
        try{ace.settings.loadState('sidebar')}catch(e){}
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <a class="btn btn-success" href="<?php echo e(route('dashboard'), false); ?>" title="Dashboard">
                <i class="ace-icon fa fa-signal"></i>
            </a>

            <a class="btn btn-info" href="<?php echo e(route('account.fees.quick-receive'), false); ?>">
                <i class="ace-icon fa fa-calculator"></i>
            </a>

            <a class="btn btn-warning" href="<?php echo e(route('user'), false); ?>">
                <i class="ace-icon fa fa-users"></i>
            </a>

            <a class="btn btn-danger" href="<?php echo e(route('setting.general'), false); ?>">
                <i class="ace-icon fa fa-cogs"></i>
            </a>


        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div>
    <!-- /.sidebar-shortcuts -->

    <ul class="nav nav-list hidden-print">
        
        <li class="<?php echo request()->is('dashboard')?'active':''; ?>">
            <a href="<?php echo e(route('dashboard'), false); ?>" >
                <i class="menu-icon fa fa-tachometer"></i>
                <span class="menu-text"> Dashboard </span>
            </a>
        </li>

        
        <?php if (\Entrust::ability('super-admin','web-cms')) : ?>
            <?php if( isset($generalSetting) && $generalSetting->web_cms ==1): ?>
                <li class="<?php echo request()->is('web*')?'active open':''; ?>  hover">
                    <a href="<?php echo e(route('web.admin.dashboard'), false); ?>">
                        <i class="menu-icon fa fa-globe" aria-hidden="true"></i>
                        <span class="menu-text">  Web CMS</span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>
                </li>
            <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','front-office')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->front_desk ==1): ?>
            <li class="<?php echo request()->is('front*')?'active open':''; ?> hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon  fa fa-sign-out" aria-hidden="true"></i>
                    <span class="menu-text"> Front Desk</span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="hover">
                        <a href="<?php echo e(route('front.postal-exchange'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Postal Exchange
                        </a>
                    </li>

                    <li class="hover">
                        <a href="<?php echo e(route('front.visitor'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Visitor Log
                        </a>
                    </li>

                    
                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        
        <?php if (\Entrust::ability('super-admin','student-staff')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->student_staff ==1): ?>
            <li class="<?php echo request()->is('student*')||request()->is('staff*')?'active open':''; ?>  hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-users" aria-hidden="true"></i>
                    <span class="menu-text"> Student&Staff</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="<?php echo request()->is('student*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Student
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('student')?'active':''; ?> hover">
                                <a href="<?php echo e(route('student'), false); ?>" accesskey="S">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Student Detail
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('student/registration')?'active':''; ?> hover">
                                <a href="<?php echo e(route('student.registration'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Registration
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('student/import')?'active':''; ?> hover">
                                <a href="<?php echo e(route('student.import'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Bulk Import
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('student/transfer')?'active':''; ?> hover">
                                <a href="<?php echo e(route('student.transfer'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Transfer Student
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('student/document')?'active':''; ?> hover">
                                <a href="<?php echo e(route('student.document'), false); ?>"  accesskey="U">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Document Upload
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('student/note')?'active':''; ?> hover">
                                <a href="<?php echo e(route('student.note'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"  accesskey="N"></i>
                                    Create Notes
                                </a>
                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('report/student*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('report.student'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Student Complete Records
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="<?php echo request()->is('guardian*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Guardian
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('guardian')?'active':''; ?> hover">
                                <a href="<?php echo e(route('guardian'), false); ?>" accesskey="S">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Guardian Detail
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('guardian/registration')?'active':''; ?> hover">
                                <a href="<?php echo e(route('guardian.registration'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Registration
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="<?php echo request()->is('staff*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Staff
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('staff')?'active':''; ?>  hover">
                                <a href="<?php echo e(route('staff'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Staff Detail
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('staff/add')?'active':''; ?>  hover">
                                <a href="<?php echo e(route('staff.add'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Registration
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('staff/import')?'active':''; ?> hover">
                                <a href="<?php echo e(route('staff.import'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Bulk Import
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('staff/document')?'active':''; ?> hover">
                                <a href="<?php echo e(route('staff.document'), false); ?>"  accesskey="U">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Document Upload
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('staff/note')?'active':''; ?> hover">
                                <a href="<?php echo e(route('staff.note'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"  accesskey="N"></i>
                                    Create Notes
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('staff/designation')?'active':''; ?> hover">
                                <a href="<?php echo e(route('staff.designation'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"  accesskey="N"></i>
                                    Designations
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('report/staff*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('report.staff'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Staff Complete Records
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        
        <?php if (\Entrust::ability('super-admin','account')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->account ==1): ?>
            <li class="<?php echo request()->is('account/*')?'active open':''; ?>  hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-calculator" aria-hidden="true"></i>
                    <span class="menu-text"> Account</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="<?php echo request()->is('account/fees*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <i class="fa fa-calculator"></i>  Fees Collection
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('account/fees')?'active':''; ?>  hover">
                                <a href="<?php echo e(route('account.fees'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Receive Detail
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/fees/quick-receive')?'active':''; ?>  hover">
                                <a href="<?php echo e(route('account.fees.quick-receive'), false); ?>" accesskey="C">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Quick Receive
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/fees/collection')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.fees.collection'), false); ?>" accesskey="R">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Collect Fees
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/fees/balance')?'active':''; ?>  hover">
                                <a href="<?php echo e(route('account.fees.balance'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Balance Fees Report
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/fees/master/add')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.fees.master.add'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Add Fees
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/fees/online-payment')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.fees.online-payment'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Online Payments
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/fees/head')?'active':''; ?>  hover">
                                <a href="<?php echo e(route('account.fees.head'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Fees Head
                                </a>
                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>

                    <li class="divider"></li>
                    <li class="<?php echo request()->is('account/report*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <i class="fa fa-print"></i> Fees Report
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('account/report/cash-book*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.report.cash-book'), false); ?>">
                                    <i class="menu-icon fa fa-rupee"></i>
                                    Cash Book
                                </a>
                            </li>

                            <li class="<?php echo request()->is('account/report/fee-collection')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.report.fee-collection'), false); ?>">
                                    <i class="menu-icon fa fa-calculator"></i>
                                    Fee Collection
                                </a>
                            </li>

                            <li class="<?php echo request()->is('account/report/fee-online-payment')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.report.fee-online-payment'), false); ?>">
                                    <i class="menu-icon fa fa-globe"></i>
                                    Online Payments
                                </a>
                            </li>

                            <li class="<?php echo request()->is('account/report/fee-collection-head*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.report.fee-collection-head'), false); ?>">
                                    <i class="menu-icon fa fa-calculator"></i>
                                    Fee Collection Head
                                </a>
                            </li>

                            <li class="<?php echo request()->is('account/report/balance-fee*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.report.balance-fee'), false); ?>">
                                    <i class="menu-icon fa fa-calculator"></i>
                                    Fee Balance
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="divider"></li>


                    <li class="<?php echo request()->is('account.transaction*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <i class="fa fa-newspaper-o"></i> Ledger & Transaction
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('account/transaction/add')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.transaction.add'), false); ?>">
                                    <i class="menu-icon fa fa-plus"></i>
                                    Transaction
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/transaction/multi-add')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.transaction.multi-add'), false); ?>">
                                    <i class="menu-icon fa fa-plus"></i>
                                    Multi Transaction
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/transaction')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.transaction'), false); ?>" accesskey="R">
                                    <i class="menu-icon fa fa-list"></i>
                                    Transaction Detail
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/transfer')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.transfer'), false); ?>">
                                    <i class="menu-icon fa fa-exchange"></i>
                                    Acc to Acc Transfer
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/transaction-head')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.transaction-head'), false); ?>">
                                    <i class="menu-icon fa fa-newspaper-o"></i>
                                    Ledger/Account
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/transaction/account-group')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.transaction.account-group'), false); ?>">
                                    <i class="menu-icon fa fa-newspaper-o"></i>
                                    Account Groups
                                </a>
                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('account/transaction/account-group/chart-of-account')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.transaction.account-group.chart-of-account'), false); ?>">
                                    <i class="menu-icon fa fa-newspaper-o"></i>
                                    Charts of Account
                                </a>
                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>

                    <li class="<?php echo request()->is('account/bank*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <i class="fa fa-bank"></i> Separate Banking
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('account/bank')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.bank'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Manage Bank Accounts
                                </a>
                            </li>
                            <li class="<?php echo request()->is('account/bank/add')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.bank.add'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Add New Bank
                                </a>
                            </li>

                            <li class="<?php echo request()->is('account/bank-transaction')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.bank-transaction'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Transaction Detail
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/bank-transaction/add')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.bank-transaction.add'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    New Transaction
                                </a>

                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>

                    <li class="divider"></li>

                    <li class="<?php echo request()->is('account/payroll*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <i class="fa fa-user-secret"></i>  Payroll
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('account/payroll')?'active':''; ?>  hover">
                                <a href="<?php echo e(route('account.payroll'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Paid Detail
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/salary/payment')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.salary.payment'), false); ?>" accesskey="R">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Salary Pay
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/payroll/master*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.payroll.master.add'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Add Payroll
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/payroll/balance')?'active':''; ?>  hover">
                                <a href="<?php echo e(route('account.payroll.balance'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Balance Salary Report
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('account/payroll/head')?'active':''; ?>  hover">
                                <a href="<?php echo e(route('account.payroll.head'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Salary Head
                                </a>

                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>
                    <li class="divider"></li>
                    <li class="<?php echo request()->is('account/report*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <i class="fa fa-print"></i> Account Report
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('account/transaction-head/view*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.transaction-head.view'), false); ?>">
                                    <i class="menu-icon fa fa-newspaper-o"></i>
                                    Statement of Ledger
                                </a>
                            </li>
                            <li class="<?php echo request()->is('account/transaction-head/balance-statement*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.transaction-head.balance-statement'), false); ?>" accesskey="B">
                                    <i class="menu-icon fa fa-newspaper-o"></i>
                                    Ledger Balance
                                </a>
                            </li>

                            <li class="<?php echo request()->is('account/transaction/account-group/chart-of-account')?'active':''; ?> hover">
                                <a href="<?php echo e(route('account.transaction.account-group.chart-of-account'), false); ?>">
                                    <i class="menu-icon fa fa-newspaper-o"></i>
                                    Charts of Account
                                </a>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','inventory')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->inventory ==1): ?>
            <li class="<?php echo request()->is('inventory*')?'active open':''; ?> hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-shopping-cart"></i>
                    Inventory
                    <b class="arrow fa fa-angle-r"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="<?php echo request()->is('inventory/assets*') || request()->is('inventory/sem-assets*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <i class="fa fa-store"></i> Class Assets
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('inventory/assets')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.assets'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Assets
                                </a>
                            </li>
                            <li class="<?php echo request()->is('inventory/sem-assets')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.sem-assets'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Faculty/Sem Assets
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="<?php echo request()->is('inventory/product*')?'active open':''; ?>  hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <span class="menu-text">Product/Assets</span>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('inventory/product/registration*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.product.registration'), false); ?>" accesskey="S">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    <i class="fa fa-plus"></i> Product
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('inventory/product')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.product'), false); ?>" accesskey="S">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    <i class="fa fa-list"></i> Product Detail
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('inventory/product/category*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.product.category'), false); ?>" accesskey="S">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    <i class="fa fa-list-alt"></i> Category
                                </a>
                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>

                    <li class="<?php echo request()->is('inventory/customer*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Customer
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('inventory/customer')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.customer'), false); ?>" accesskey="S">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Customer Detail
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('inventory/customer/registration')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.customer.registration'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Registration
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('inventory/customer/document')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.customer.document'), false); ?>"  accesskey="U">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Document Upload
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('inventory/customer/note')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.customer.note'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"  accesskey="N"></i>
                                    Create Notes
                                </a>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="<?php echo request()->is('inventory/vendor*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Vendor
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('inventory/vendor')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.vendor'), false); ?>" accesskey="S">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Vendor Detail
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('inventory/vendor/registration')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.vendor.registration'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Registration
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('inventory/vendor/document')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.vendor.document'), false); ?>"  accesskey="U">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Document Upload
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('inventory/vendor/note')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.vendor.note'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"  accesskey="N"></i>
                                    Create Notes
                                </a>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="<?php echo request()->is('inventory/vendor*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Purchase
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('inventory/vendor')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.vendor'), false); ?>" accesskey="S">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Purchase Details
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('inventory/vendor/registration')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.vendor.registration'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Purchase Now
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('inventory/vendor/document')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.vendor.document'), false); ?>"  accesskey="U">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Purchase Return
                                </a>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="<?php echo request()->is('inventory/vendor*')?'active open':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Sales
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('inventory/vendor')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.vendor'), false); ?>" accesskey="S">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Sales Details
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('inventory/vendor/registration')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.vendor.registration'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Sales Now
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('inventory/vendor/document')?'active':''; ?> hover">
                                <a href="<?php echo e(route('inventory.vendor.document'), false); ?>"  accesskey="U">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Sales Return
                                </a>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    

                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        
        <?php if (\Entrust::ability('super-admin','library')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->library ==1): ?>
            <li class="<?php echo request()->is('library*')?'active':''; ?> hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-book" aria-hidden="true"></i>
                    <span class="menu-text">Library</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="<?php echo request()->is('library/book*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('library.book'), false); ?>" accesskey="L" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Books
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('library/member*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('library.book'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Book Detail
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('library/book/add*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('library.book.add'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Add New
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('library/book/import*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('library.book.import'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Bulk Import
                                </a>

                                <b class="arrow"></b>
                            </li>


                            <li class="<?php echo request()->is('library/book/category*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('library.book.category'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Category
                                </a>

                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>

                    <li class="<?php echo request()->is('library/member*') || request()->is('library/student*') || request()->is('library/staff*') ?'active':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Members
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('library/member*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('library.member'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Membership
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('library/student*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('library.student'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Student Member
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('library/staff*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('library.staff'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Staff Member
                                </a>

                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>

                    <li class="<?php echo request()->is('library/request*') ?'active':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Book Request
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('library/request-student*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('library.student-request'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Student Request
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('library/request-staff*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('library.staff-request'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Staff Request
                                </a>

                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>

                    <li class="<?php echo request()->is('library/issue-history*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('library.issue-history'), false); ?>">
                            <i class="menu-icon fa fa-history"></i>
                            Issue History
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('library/return-over*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('library.return-over'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Return Period Over
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('library/circulation*')?'active':''; ?>  hover">
                        <a href="<?php echo e(route('library.circulation'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Circulation Setting
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        
        <?php if (\Entrust::ability('super-admin','attendance')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->attendance ==1): ?>
            <li class="<?php echo request()->is('attendance*')?'active':''; ?> hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-calendar" aria-hidden="true"></i>
                    <span class="menu-text"> Attendance</span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Student Attendance
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('attendance/student*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('attendance.student'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Regular Attendance
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('attendance/subject*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('attendance.subject'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Subject Wise Attendance
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="<?php echo request()->is('attendance/staff*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('attendance.staff'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Staff Attendance
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('attendance/master*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('attendance.master'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Monthly Calendar
                        </a>

                        <b class="arrow"></b>
                    </li>

                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        
        <?php if (\Entrust::ability('super-admin','examination')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->exam == 1): ?>
            <li class="<?php echo request()->is('exam*') || request()->is('mcq*')?'active':''; ?> hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-line-chart"  aria-hidden="true"></i>
                    <span class="menu-text"> Exam</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
				
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <span class="menu-text"> Online - MCQ Exam</span>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="hover">
                                <a href="#" class="dropdown-toggle">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Question Bank
                                    <b class="arrow fa fa-angle-r"></b>
                                </a>
                                <b class="arrow"></b>
                                <ul class="submenu">
                                    <li class="<?php echo request()->is('mcq/question/index*')?'active':''; ?> hover">
                                        <a href="<?php echo e(route('mcq.question.index'), false); ?>">
                                            <i class="menu-icon fa fa-caret-right"></i>
                                            Question
                                        </a>
                                        <b class="arrow"></b>
                                    </li>
                                    <li class="<?php echo request()->is('mcq/question/question-group*')?'active':''; ?> hover">
                                        <a href="<?php echo e(route('mcq.question.question-group'), false); ?>">
                                            <i class="menu-icon fa fa-caret-right"></i>
                                            Group
                                        </a>
                                        <b class="arrow"></b>
                                    </li>
                                    <li class="<?php echo request()->is('mcq/question/question-level*')?'active':''; ?> hover">
                                        <a href="<?php echo e(route('mcq.question.question-level'), false); ?>">
                                            <i class="menu-icon fa fa-caret-right"></i>
                                            Level
                                        </a>
                                        <b class="arrow"></b>
                                    </li>
                                </ul>
                            </li>

                            <li class="<?php echo request()->is('mcq/exam/exam-instruction*')?'active':''; ?>  hover">
                                <a href="<?php echo e(route('mcq.exam.exam-instruction'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Instruction
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('mcq/exam')?'active':''; ?> hover">
                                <a href="<?php echo e(route('mcq.exam.index'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Online Exam
                                </a>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="<?php echo request()->is('exam*')?'active':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            <span class="menu-text"> Offline - Manual Exam</span>
                        </a>

                        <b class="arrow"></b>

                        <ul class="submenu">
                            <li class="<?php echo request()->is('exam/schedule*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('exam.schedule'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Schedule Exam
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('exam/mark-ledger')?'active':''; ?>  hover">
                                <a href="<?php echo e(route('exam.mark-ledger'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Mark Ledger
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('exam')?'active':''; ?> hover">
                                <a href="<?php echo e(route('exam'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Exams Head
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('exam/admit-card*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('exam.admit-card'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Admit Card
                                </a>
                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('exam/routine*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('exam.routine'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Routine/Schedule
                                </a>
                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('exam/mark-sheet*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('exam.mark-sheet'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Grade/Mark/Ledger Sheet
                                </a>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>


                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        
        <?php if (\Entrust::ability('super-admin','certificate')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->certificate ==1): ?>
            <li class="<?php echo request()->is('certificate*')?'active':''; ?> hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-certificate"  aria-hidden="true"></i>
                    <span class="menu-text"> Certificate</span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="<?php echo request()->is('certificate/issue')?'active':''; ?> hover">
                        <a href="<?php echo e(route('certificate.issue'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Issue Certificate
                        </a>
                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('certificate/attendance*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('certificate.attendance'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Attendance Certificate
                        </a>
                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('certificate/transfer*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('certificate.transfer'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Transfer Certificate
                        </a>
                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('certificate/character*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('certificate.character'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Character Certificate
                        </a>
                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('certificate/bonafide*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('certificate.bonafide'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Bonafide Certificate
                        </a>
                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('certificate/course-completion*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('certificate.course-completion'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Course Completion Cer.
                        </a>
                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('certificate/nirgam-utara*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('certificate.nirgam-utara'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Nirgam Utara
                        </a>
                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('certificate/issue-history*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('certificate.issue-history'), false); ?>">
                            <i class="menu-icon fa fa-history"></i>
                            Issue History
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('certificate/generate*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('certificate.generate'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Custom Print
                        </a>
                        <b class="arrow"></b>
                    </li>
                    <li class="<?php echo request()->is('certificate/template*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('certificate.template'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Certificate Template
                        </a>
                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        
        <?php if (\Entrust::ability('super-admin','hostel')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->hostel ==1): ?>
            <li class="<?php echo request()->is('hostel*')?'active':''; ?> hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon  fa fa-bed" aria-hidden="true"></i>
                    <span class="menu-text"> Hostels </span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="<?php echo request()->is('hostel/resident*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('hostel.resident'), false); ?>" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Resident
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('hostel/resident')?'active':''; ?> hover">
                                <a href="<?php echo e(route('hostel.resident'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Detail
                                </a>
                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('hostel/resident/add')?'active':''; ?> hover">
                                <a href="<?php echo e(route('hostel.resident.add'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Registration
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('hostel/resident/history')?'active':''; ?> hover">
                                <a href="<?php echo e(route('hostel.resident.history'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Occupant History
                                </a>
                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>
                    <li class="<?php echo request()->is('hostel') || request()->is('hostel/room-type')?'active':''; ?> hover">
                        <a href="<?php echo e(route('hostel'), false); ?>" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Hostel
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">

                            <li class="<?php echo request()->is('hostel*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('hostel'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Hostel
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('hostel/room-type*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('hostel.room-type'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Room Type
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="<?php echo request()->is('hostel/food*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('hostel'), false); ?>" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Food & Meal
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('hostel/food*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('hostel.food'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Meal Schedule
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('hostel/food/eating-time*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('hostel.food.eating-time'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Eating Time
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('hostel/food/category*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('hostel.food.category'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Food Category
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('hostel/food/item*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('hostel.food.item'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Food Item
                                </a>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        
        <?php if (\Entrust::ability('super-admin','transport')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->transport ==1): ?>
            <li class="<?php echo request()->is('transport*')?'active':''; ?> hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon  fa fa-bus" aria-hidden="true"></i>
                    <span class="menu-text"> Transport </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="<?php echo request()->is('transport/user*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('transport.user'), false); ?>" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Traveller/User
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('transport/user')?'active':''; ?> hover">
                                <a href="<?php echo e(route('transport.user'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Detail
                                </a>
                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('transport/user/add')?'active':''; ?> hover">
                                <a href="<?php echo e(route('transport.user.add'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Registration
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('transport/user/history')?'active':''; ?> hover">
                                <a href="<?php echo e(route('transport.user.history'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    User History
                                </a>
                                <b class="arrow"></b>
                            </li>

                        </ul>
                    </li>
                    <li class="<?php echo request()->is('transport/route*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('transport.route'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Route
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                    </li>

                    <li class="<?php echo request()->is('transport/vehicle*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('transport.vehicle'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Vehicle
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                    </li>

                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        
        

        <?php if (\Entrust::ability('super-admin','assignment')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->assignment ==1): ?>
            <li class="<?php echo request()->is('assignment')?'active':''; ?> hover">
                <a href="<?php echo e(route('assignment'), false); ?>">
                    <i class="menu-icon fa fa-tasks"></i>
                    Assignment
                </a>
                <b class="arrow"></b>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','download')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->upload_download ==1): ?>
            <li class="<?php echo request()->is('download*')?'active':''; ?> hover">
                <a href="<?php echo e(route('download'), false); ?>">
                    <i class="menu-icon fa fa-download"></i>
                    Download
                    <b class="arrow fa fa-angle-r"></b>
                </a>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','meeting')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->meeting ==1): ?>
            <li class="<?php echo request()->is('meeting*')?'active':''; ?> hover">
                <a href="<?php echo e(route('meeting'), false); ?>">
                    <i class="menu-icon fa fa-video-camera"></i>
                    Meeting
                    <b class="arrow fa fa-angle-r"></b>
                </a>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>


        
        <?php if (\Entrust::ability('super-admin','report')) : ?>
        
        <?php endif; // Entrust::ability ?>

        
        <?php if (\Entrust::ability('super-admin','alert-center')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->alert ==1): ?>
            <li class="<?php echo request()->is('info*')?'active':''; ?> hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-bullhorn" aria-hidden="true"></i>
                    <span class="menu-text"> Alert </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>
                <b class="arrow"></b>
                <ul class="submenu">
                    <li class="<?php echo request()->is('info/notice*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('info.notice'), false); ?>" accesskey="L">
                            <i class="menu-icon fa fa-caret-right"></i>
                            User Notice
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <li class="<?php echo request()->is('info/smsemail*')?'active':''; ?> hover">
                        <a href="<?php echo e(route('info.smsemail'), false); ?>">
                            <i class="menu-icon fa fa-caret-right"></i>
                            SMS / E-mail
                        </a>

                        <b class="arrow"></b>
                    </li>

                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>

        
        <?php if (\Entrust::ability('super-admin','academic')) : ?>
        <?php if( isset($generalSetting) && $generalSetting->academic ==1): ?>
            <li class="hover">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon  fa fa-graduation-cap" aria-hidden="true"></i>
                    <span class="menu-text"> Academics </span>
                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="<?php echo request()->is('faculty*') || request()->is('semester*')?'active':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Academic Level
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('faculty*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('faculty'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Faculty/Level/Class
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('semester*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('semester'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Semester/Section
                                </a>
                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('student-batch*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('student-batch'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Batch
                                </a>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>
                    <li class="<?php echo request()->is('grading*') || request()->is('subject*')?'active':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Grading/Subject
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('subject*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('subject'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Course / Subject
                                </a>
                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('grading*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('grading'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Grading
                                </a>
                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>

                    <li class="<?php echo request()->is('*status')?'active':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Status Setting
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('student-status*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('student-status'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Student Status
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('attendance-status*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('attendance-status'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Attendance Status
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('book-status*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('book-status'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Books Status
                                </a>

                                <b class="arrow"></b>
                            </li>

                            <li class="<?php echo request()->is('bed-status*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('bed-status'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Hostel Bed Status
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('customer-status*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('customer-status'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Customer Status
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>


                    <li class="<?php echo request()->is('year*') || request()->is('month*')?'active':''; ?> hover">
                        <a href="#" class="dropdown-toggle">
                            <i class="menu-icon fa fa-caret-right"></i>
                            Year & Month
                            <b class="arrow fa fa-angle-r"></b>
                        </a>
                        <b class="arrow"></b>
                        <ul class="submenu">
                            <li class="<?php echo request()->is('year*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('year'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Year
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('month*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('month'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Month
                                </a>

                                <b class="arrow"></b>
                            </li>
                            <li class="<?php echo request()->is('day*')?'active':''; ?> hover">
                                <a href="<?php echo e(route('day'), false); ?>">
                                    <i class="menu-icon fa fa-caret-right"></i>
                                    Day
                                </a>

                                <b class="arrow"></b>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
        <?php endif; ?>
        <?php endif; // Entrust::ability ?>



        
        <?php if (\Entrust::ability('super-admin','help')) : ?>
            <?php if( isset($generalSetting) && $generalSetting->help ==1): ?>
                <li class="hover">
                    <a href="#" target="_blank" class="dropdown-toggle">
                        <i class="menu-icon  fa fa-question" aria-hidden="true"></i>
                        <span class="menu-text"> Help </span>
                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>

                    <ul class="submenu">
                        <li class="hover">
                            <a href="<?php echo e(route('license-info'), false); ?>" target="_self">
                                <i class="menu-icon fa fa-caret-right"></i>
                                License Info
                            </a>
                        </li>
                        <li class="hover">
                            <a href="http://unlimitededufirm.com/demo-detail" target="_blank">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Test Demo
                            </a>
                        </li>
                        <li class="hover">
                            <a href="https://www.youtube.com/watch?v=2jgA9WY8IzQ&list=PLCtD_CGPAQJ2zSk5cDUkkfWGdtMGsF9n0" target="_blank">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Video Tutorial
                            </a>
                        </li>
                        <li class="hover">
                            <a href="http://docs.unlimitededufirm.com" target="_blank">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Documentation
                            </a>
                        </li>
                        <li class="hover">
                            <a href="https://codecanyon.net/item/unlimited-edu-firm-school-college-information-management-system/21850988" target="_blank">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Buy New License
                            </a>
                        </li>
                    </ul>
                </li>
            <?php endif; ?>
        <?php endif; // Entrust::ability ?>
    </ul><!-- /.nav-list -->
</div>

<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/layouts/includes/menu.blade.php ENDPATH**/ ?>