<div id="sidebar" class="sidebar responsive ace-save-state">
    <script type="text/javascript">
        try{ace.settings.loadState('sidebar')}catch(e){}
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">

            <a class="btn btn-success" href="<?php echo e(route('web.home'), false); ?>" target="_blank">
                <i class="menu-icon fa fa-globe"></i>
            </a>

            <a class="btn btn-warning" href="<?php echo e(route('web.admin.notice.add'), false); ?>">
                <i class="menu-icon fa fa-list"></i>
            </a>

            <a class="btn btn-info" href="<?php echo e(route('web.admin.blog.add'), false); ?>">
                <i class="menu-icon fa fa-pencil"></i>
            </a>

            <a class="btn btn-danger" href="<?php echo e(route('web.admin.settings.general'), false); ?>">
                <i class="menu-icon fa fa-cogs"></i>
            </a>
        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div><!-- /.sidebar-shortcuts -->

    <ul class="nav nav-list">
        <?php if (\Entrust::ability('super-admin','web-menu-dashboard')) : ?>
        <li <?php echo request()->is('dashboard')?'class="active"':''; ?>>
            <a href="<?php echo e(route('dashboard'), false); ?>">
                <i class="menu-icon fa fa-exchange"></i>
                <span class="menu-text">IMS Dashboard </span>
            </a>
        </li>

        <li <?php echo request()->is('webportal/admin/dashboard')?'class="active"':''; ?>>
            <a href="<?php echo e(route('web.admin.dashboard'), false); ?>">
                <i class="menu-icon fa fa-dashboard"></i>
                <span class="menu-text"> CMS Dashboard </span>
            </a>
        </li>
        <?php endif; // Entrust::ability ?>


        <?php if (\Entrust::ability('super-admin','web-menu-analytics')) : ?>
        <li <?php echo request()->is('webportal/admin/analytics')?'class="active"':''; ?>>
            <a href="<?php echo e(route('web.admin.analytics'), false); ?>">
                <i class="menu-icon fa fa-bar-chart"></i>
                <span class="menu-text"> Analytic </span>
            </a>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-setting')) : ?>
        <!-- Settings manager -->
        <li <?php echo request()->is('webportal/admin/settings*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-cogs"></i>
                <span class="menu-text">Settings</span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/settings/general')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.settings.general'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        General
                    </a>
                </li>

                <li <?php echo request()->is('webportal/admin/settings/home')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.settings.home'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        Home Page
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/settings/about-us')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.settings.about-us'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        About Us
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/settings/contact-us')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.settings.contact-us'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        Contact Us
                    </a>
                </li>

               

            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-menu-page')) : ?>
        <!-- Page Menu -->
        <li <?php echo request()->is('webportal/admin/page*')||request()->is('webportal/admin/menu*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-copy"></i>
                <span class="menu-text"> Menu & Pages </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>

            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/page')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.page'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        Pages
                    </a>
                </li>

                <!-- Menu Manager -->
                <li <?php echo request()->is('webportal/admin/menu')?'class="active open"':""; ?>>
                    <a href="<?php echo e(route('web.admin.menu'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        Menu
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-slider')) : ?>
        <!-- Slider Menus -->
        <li <?php echo request()->is('webportal/admin/slider*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-picture-o"></i>
                <span class="menu-text"> Slider  </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/slider')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.slider'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Sliders
                    </a>
                </li>

                <li <?php echo request()->is('webportal/admin/slider/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.slider.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-notice')) : ?>
        <!-- Notice  Menu -->
        <li <?php echo request()->is('webportal/admin/notice*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-th-list "></i>
                <span class="menu-text"> Notice </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/notice')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.notice'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Notice
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/notice/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.notice.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-blog')) : ?>
        <!-- Blog  Menu -->
        <li <?php echo request()->is('webportal/admin/blog*') || request()->is('webportal/admin/category*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list-alt"></i>
                <span class="menu-text"> Blog Post </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/blog')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.blog'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> All Posts
                    </a>
                </li>

                <li <?php echo request()->is('webportal/admin/blog/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.blog.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i>  New Post
                    </a>
                </li>

                <li <?php echo request()->is('webportal/admin/category')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.category'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> All Category
                    </a>
                </li>

                <li <?php echo request()->is('webportal/admin/category/add*')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.category.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add Category
                    </a>
                </li>


            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-event')) : ?>
        <!-- Events  Menu -->
        <li <?php echo request()->is('webportal/admin/events*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-calendar"></i>
                <span class="menu-text"> Events </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/events')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.events'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Events
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/events/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.events.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-services')) : ?>
        <!-- Events  Menu -->
        <li <?php echo request()->is('webportal/admin/services*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-tasks"></i>
                <span class="menu-text"> Course/Services </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/services')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.services'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Course/Services
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/services/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.services.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-gallery')) : ?>
        <!-- Gallery Menus -->
        <li <?php echo request()->is('webportal/admin/gallery*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-camera"></i>
                <span class="menu-text"> Gallery  </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/gallery')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.gallery'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Galleries
                    </a>
                </li>

                <li <?php echo request()->is('webportal/admin/gallery/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.gallery.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>


            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-download')) : ?>
        <!-- Download  Menu -->
        <li <?php echo request()->is('webportal/admin/download*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-download"></i>
                <span class="menu-text"> Download </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/download')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.download'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Downloads
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/download/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.download.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-faq')) : ?>
        <!-- Faq Menus -->
        <li <?php echo request()->is('webportal/admin/faq*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-question"></i>
                <span class="menu-text"> Faq  </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/faq')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.faq'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Faqs
                    </a>
                </li>

                <li <?php echo request()->is('webportal/admin/faq/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.faq.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>


            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-counter')) : ?>
        <!-- Counters Menus -->
        <li <?php echo request()->is('webportal/admin/counter*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-compass"></i>
                <span class="menu-text"> Counters  </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>

            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/counter')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.counter'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Counters
                    </a>
                </li>

                <li <?php echo request()->is('webportal/admin/counter/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.counter.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>


            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-client')) : ?>
        <!-- Slider Menus -->
        <li <?php echo request()->is('webportal/admin/client*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-certificate"></i>
                <span class="menu-text"> Client/Award  </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/client')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.client'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Clients/Awards
                    </a>
                </li>

                <li <?php echo request()->is('webportal/admin/client/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.client.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-testimonial')) : ?>
        <!-- Testimonial manager -->
        <li <?php echo request()->is('webportal/admin/testimonial*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-comment"></i>
                <span class="menu-text">Testimonial </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/testimonial')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.testimonial'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Testimonials
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/testimonial/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.testimonial.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-staff')) : ?>
        <!-- Staffs manager -->
        <li <?php echo request()->is('webportal/admin/staff*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-user-md"></i>
                <span class="menu-text">Staff </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/staff')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.staff'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Staffs
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/staff/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.staff.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-pricing')) : ?>
        <!-- Staffs manager -->
        <li <?php echo request()->is('webportal/admin/pricing*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-dollar"></i>
                <span class="menu-text">Pricing </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/pricing')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.pricing'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-list"></i> Pricing
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/pricing/add')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.pricing.add'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <i class="ace-icon fa fa-plus"></i> Add New
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-registration')) : ?>
        <!-- Notice  Menu -->
        <li <?php echo request()->is('webportal/admin/registration*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-certificate"></i>
                <span class="menu-text"> Registration </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/registration')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.registration'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        Registration
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/registration/programme')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.registration.programme'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        Application For
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/settings/registration')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.settings.registration'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        Registration Setting
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>


        <?php if (\Entrust::ability('super-admin','web-menu-contact')) : ?>
        <!-- Notice  Menu -->
        <li <?php echo request()->is('webportal/admin/contact*')||request()->is('webportal/admin/subscribers*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-credit-card"></i>
                <span class="menu-text"> Contact Manager </span>
                <b class="arrow fa fa-angle-down"></b>
            </a>
            <ul class="submenu">
                <li <?php echo request()->is('webportal/admin/contact')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.contact'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        Contact Detail
                    </a>
                </li>
                <li <?php echo request()->is('webportal/admin/contact/group')?'class="active"':""; ?>>
                    <a href="<?php echo e(route('web.admin.contact.group'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        Contact Group
                    </a>
                </li>

                <li <?php echo request()->is('webportal/admin/subscribers*')?'class="active open"':""; ?>>
                    <a href="<?php echo e(route('web.admin.subscribers'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <span class="menu-text"> Subscribers </span>
                    </a>
                </li>

                <li <?php echo request()->is('webportal/admin/contact-us*')?'class="active open"':""; ?>>
                    <a href="<?php echo e(route('web.admin.contact-us'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        <span class="menu-text"> Contact Message </span>
                    </a>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

        <?php if (\Entrust::ability('super-admin','web-menu-alert')) : ?>
        <li <?php echo request()->is('web/admin/info*')?'class="active open"':""; ?>>
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-mobile-phone"></i>
                <span class="menu-text"> Alert/Notification</span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <ul class="submenu">
                <li class="<?php echo request()->is('web/admin/info/smsemail*')?'active':''; ?> hover">
                    <a href="<?php echo e(route('web.admin.info.smsemail'), false); ?>">
                        <i class="ace-icon fa fa-double-angle-right"></i>
                        SMS / E-mail
                    </a>

                    <b class="arrow"></b>
                </li>
            </ul>
        </li>
        <?php endif; // Entrust::ability ?>

    </ul><!-- /.nav-list -->

    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>
</div>
<?php /**PATH C:\xampp7.4\htdocs\EduFirm\resources\views/web/admin/layouts/includes/sidebar.blade.php ENDPATH**/ ?>