--
-- Table structure and data for table `block_layouts`
--

INSERT IGNORE INTO block_layouts (id, `name`, identifier, `body`)
VALUES (UUID(), 'Layout Footer Widget', 'layout-footer-widget', '                    <div class="footer_widget">
                        {{var/body}}
                    </div>');
INSERT IGNORE INTO block_layouts (id, `name`, identifier, `body`)
VALUES (UUID(), 'Index Text Section', 'index-text-section', '                <div><hr class="section-heading-spacer"></div>
                <div class="clearfix"></div>
                <h2 class="section-heading">{{var/title}}</h2>
                <div class="lead">{{var/lead}}</div>
                <div class="body">{{var/body}}</div>');
INSERT IGNORE INTO block_layouts (id, `name`, identifier, `body`)
VALUES (UUID(), 'Service Container', 'service-container', '        <div class="col-lg-3 col-md-6 text-center">
          <div class="mt-5">
{{ var/body }}
          </div>
        </div>');
INSERT IGNORE INTO block_layouts (id, `name`, identifier, `body`)
VALUES (UUID(), 'Slider Slide', 'slider-slide', '<div class="slider_text ">
    {{ var/body }}
</div>
');
INSERT IGNORE INTO block_layouts (id, `name`, identifier, `body`)
VALUES (UUID(), 'Single Service', 'single-service', '<div class="single_service">
{{ var/body }}
                </div>');

UPDATE block_layouts
SET deleted_at = NULL
WHERE identifier IN
      ('layout-footer-widget', 'index-text-section', 'service-container', 'slider-slide', 'single-service', 'empty');

--
-- Table structure and data for table `blocks`
--

INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Header Appointment', 'layout-header-appointment',
        '                                <p><a class="popup-with-form" href="#test-form">Make an Appointment</a></p>',
        null, '                        <div class="Appointment">
                            <div class="book_btn d-none d-lg-block">
                                {{ var/body }}
                            </div>
                        </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Header Navigation', 'layout-header-navigation', '                                <ul id="navigation">
                                    <li><a class="active" href="/">home</a></li>
                                    <li><a href="/department">department</a></li>
                                    <li><a href="#">blog <i class="ti-angle-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="/blog">blog</a></li>
                                            <li><a href="/news">news</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">pages <i class="ti-angle-down"></i></a>
                                        <ul class="submenu">
                                            <li><a href="/elements">elements</a></li>
                                            <li><a href="/about">about</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="/doctors">Doctors</a></li>
                                    <li><a href="/contact">Contact</a></li>
                                </ul>
', null, '                        <div class="main-menu  d-none d-lg-block">
                            <nav>{{ var/body }}
                            </nav>
                        </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Footer Bottom', 'layout-footer-bottom', '', null, '    <div class="copy-right_text">
        <div class="container">
            <div class="footer_border"></div>
            <div class="row">
                <div class="col-xl-12">
{{block/layout-footer-copyright}}
                </div>
            </div>
        </div>
    </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Our Department #4', 'our-department-4', '                        <h3><a href="#">Diagnostic Test</a></h3>
                        <p>Esteem spirit temper too say adieus who direct esteem.</p>
', null, '                <div class="single_department">
                    <div class="department_thumb">
                        <img src="img/department/4.png" alt="">
                    </div>
                    <div class="department_content">
                        {{ var/body }}
                        <a href="#" class="learn_more">Learn More</a>
                    </div>
                </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Slider Slide #2', 'slider-slide-2', '<h3> <span>Health care</span> <br>
For Hole Family </h3>
<p>In healthcare sector, service excellence is the facility of <br> the hospital as
healthcare service provider to consistently.</p>
<a href="#" class="boxed-btn3">Check Our Services</a>
', (SELECT id FROM block_layouts WHERE identifier = 'slider-slide'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Footer', 'layout-footer', '', null, '<footer class="footer">
    {{block/layout-footer-top}}
    {{block/layout-footer-bottom}}
</footer>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Footer Column #3', 'layout-footer-column-3', '
                        <h3>
                            Useful Links
                        </h3>
                        <ul>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#"> Contact</a></li>
                            <li><a href="#"> Appointment</a></li>
                        </ul>', (SELECT id FROM block_layouts WHERE identifier = 'layout-footer-widget'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Our Department #6', 'our-department-6', '                        <h3><a href="#">Surgery Service</a></h3>
                        <p>Esteem spirit temper too say adieus who direct esteem.</p>
', null, '                <div class="single_department">
                    <div class="department_thumb">
                        <img src="img/department/6.png" alt="">
                    </div>
                    <div class="department_content">
                        {{ var/body }}
                        <a href="#" class="learn_more">Learn More</a>
                    </div>
                </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Header Short Contact List', 'layout-header-short-contact-list', '', null, '                        <div class="short_contact_list">
                           {{list/layout-header-short-contact-list}}
                        </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Footer Column #2', 'layout-footer-column-2', '<h3>Departments</h3>
                        <ul>
                            <li><a href="#">Eye Care</a></li>
                            <li><a href="#">Skin Care</a></li>
                            <li><a href="#">Pathology</a></li>
                            <li><a href="#">Medicine</a></li>
                            <li><a href="#">Dental</a></li>
                        </ul>', (SELECT id FROM block_layouts WHERE identifier = 'layout-footer-widget'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Footer Social Links', 'layout-footer-social-links', '', null, '                        <div class="socail_links">
                            {{list/layout-footer-social-links}}
                        </div>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Welcome Docmed Area', 'welcome-docmed-area', '                    <h2>Welcome to Docmed</h2>
                    <h3>Best Care For Your <br>
                        Good Health</h3>
                    <p>Esteem spirit temper too say adieus who direct esteem.
                        It esteems luckily or picture placing drawing. Apartments frequently or motionless on reasonable
                        projecting expression.</p>
                    <ul>
                        <li> <i class="flaticon-right"></i> Apartments frequently or motionless. </li>
                        <li> <i class="flaticon-right"></i> Duis aute irure dolor in reprehenderit in voluptate.</li>
                        <li> <i class="flaticon-right"></i> Voluptatem quia voluptas sit aspernatur. </li>
                    </ul>
', null, '<div class="welcome_docmed_area">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6">
                <div class="welcome_thumb">
                    <div class="thumb_1">
                        <img src="/img/about/1.png" alt="">
                    </div>
                    <div class="thumb_2">
                        <img src="/img/about/2.png" alt="">
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6">
                <div class="welcome_docmed_info">
                    {{ var/body }}
                    <p><a href="#" class="boxed-btn3-white-2">Learn More</a></p>
                </div>
            </div>
        </div>
    </div>
</div>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Service #1', 'service-1', '                    <div class="icon">
                        <i class="flaticon-electrocardiogram"></i>
                    </div>
                    <h3>Hospitality</h3>
                    <p>Clinical excellence must be the priority for any health care service provider.</p>
                    <a href="#" class="boxed-btn3-white">Apply For a Bed</a>
', (SELECT id FROM block_layouts WHERE identifier = 'single-service'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Footer Text Below Logo', 'layout-footer-text-below-logo', '
                        <p>
                            Firmament morning sixth subdue darkness
                            creeping gathered divide.
                        </p>', (SELECT id FROM block_layouts WHERE identifier = 'empty'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Footer Logo', 'layout-footer-logo', '                            <p><a href="#">
                                <img src="/img/footer_logo.png" alt="">
                            </a></p>
', null, '                        <div class="footer_logo">
                            {{ var/body }}
                        </div>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Business Expert Area', 'business-expert-area', '', null, '<div class="business_expert_area">
    <div class="business_tabs_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <ul class="nav" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Excellent Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Qualified Doctors</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Emergency Departments</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="border_bottom">
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <div class="row align-items-center">
                        <div class="col-xl-6 col-md-6">
                            <div class="business_info">
                                <div class="icon">
                                    <i class="flaticon-first-aid-kit"></i>
                                </div>
                                <h3>Leading edge care for Your family</h3>
                                <p>Esteem spirit temper too say adieus who direct esteem.
                                    It esteems luckily picture placing drawing. Apartments frequently or motionless on
                                    reasonable projecting expression.
                                </p>
                            </div>
                        </div>
                        <div class="col-xl-6 col-md-6">
                            <div class="business_thumb">
                                <img src="/img/about/business.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <div class="row align-items-center">
                        <div class="col-xl-6 col-md-6">
                            <div class="business_info">
                                <div class="icon">
                                    <i class="flaticon-first-aid-kit"></i>
                                </div>
                                <h3>Leading edge care for Your family</h3>
                                <p>Esteem spirit temper too say adieus who direct esteem.
                                    It esteems luckily picture placing drawing. Apartments frequently or motionless on
                                    reasonable projecting expression.
                                </p>
                            </div>
                        </div>
                        <div class="col-xl-6 col-md-6">
                            <div class="business_thumb">
                                <img src="/img/about/business.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                    <div class="row align-items-center">
                        <div class="col-xl-6 col-md-6">
                            <div class="business_info">
                                <div class="icon">
                                    <i class="flaticon-first-aid-kit"></i>
                                </div>
                                <h3>Leading edge care for Your family</h3>
                                <p>Esteem spirit temper too say adieus who direct esteem.
                                    It esteems luckily picture placing drawing. Apartments frequently or motionless on
                                    reasonable projecting expression.
                                </p>
                            </div>
                        </div>
                        <div class="col-xl-6 col-md-6">
                            <div class="business_thumb">
                                <img src="/img/about/business.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Footer Column #1', 'layout-footer-column-1', '', null, '                    <div class="footer_widget">
                        {{block/layout-footer-logo}}
                        <div>
                            {{block/layout-footer-text-below-logo}}
                        </div>
                        {{block/layout-footer-social-links}}
                    </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Header Mobile Menu', 'layout-header-mobile-menu', '', null, '                        <div class="mobile_menu d-block d-lg-none"></div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Footer Column #4', 'layout-footer-column-4', '                        <h3>
                            Address
                        </h3>
                        <p>
                            200, D-block, Green lane USA <br>
                            +10 367 467 8934 <br>
                            <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="4f2b202c222a2b0f2c20213b2e2c3b612c2022">[email&nbsp;protected]</a>
                        </p>', (SELECT id FROM block_layouts WHERE identifier = 'layout-footer-widget'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Business Expert Container #2', 'business-expert-container-2', '                                <h3>Leading edge care for Your family</h3>
                                <p>Esteem spirit temper too say adieus who direct esteem.
                                    It esteems luckily picture placing drawing. Apartments frequently or motionless on
                                    reasonable projecting expression.
                                </p>
', null, '                            <div class="business_info">
                                <div class="icon">
                                    <i class="flaticon-first-aid-kit"></i>
                                </div>
                                    {{ var/body }}
                            </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Footer Top', 'layout-footer-top', '', null, '    <div class="footer_top">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-md-6 col-lg-4">
{{block/layout-footer-column-1}}
                </div>
                <div class="col-xl-2 offset-xl-1 col-md-6 col-lg-3">
                    {{block/layout-footer-column-2}}
                </div>
                <div class="col-xl-2 col-md-6 col-lg-2">
                    {{block/layout-footer-column-3}}
                </div>
                <div class="col-xl-3 col-md-6 col-lg-3">
                    {{block/layout-footer-column-4}}
                </div>
            </div>
        </div>
    </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Asana Korim', 'asana-korim', '                                <p>Donec imperdiet congue orci consequat mattis. Donec rutrum porttitor <br>
                                    sollicitudin. Pellentesque id dolor tempor sapien feugiat ultrices nec sed neque.
                                    <br>
                                    Fusce ac mattis nulla. Morbi eget ornare dui. </p>
', null, '                            <div class="testmonial_info text-center">
                                <div class="quote">
                                    <i class="flaticon-straight-quotes"></i>
                                </div>
                                {{ var/body }}
                                <div class="testmonial_author">
                                    <h4>{{ var/title }}</h4>
                                </div>
                            </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Service #3', 'service-3', '                    <div class="icon">
                        <i class="flaticon-first-aid-kit"></i>
                    </div>
                    <h3>Chamber Service</h3>
                    <p>Clinical excellence must be the priority for any health care service provider.</p>
                    <a href="#" class="boxed-btn3-white">Make an Appointment</a>
', (SELECT id FROM block_layouts WHERE identifier = 'single-service'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Business Expert Container #3', 'business-expert-container-3', '                                <h3>Leading edge care for Your family</h3>
                                <p>Esteem spirit temper too say adieus who direct esteem.
                                    It esteems luckily picture placing drawing. Apartments frequently or motionless on
                                    reasonable projecting expression.
                                </p>
', null, '                            <div class="business_info">
                                <div class="icon">
                                    <i class="flaticon-first-aid-kit"></i>
                                </div>
                                {{ var/body }}
                            </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Footer Copyright', 'layout-footer-copyright', '                    <p class="copy_right text-center">
                        Copyright ©2020
                         All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>

                    </p>', (SELECT id FROM block_layouts WHERE identifier = 'empty'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Expert Doctors Area', 'expert-doctors-area', '', null, '<div class="expert_doctors_area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="doctors_title mb-55">
                    <h3>Expert Doctors</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="expert_active owl-carousel">
                    <div class="single_expert">
                        <div class="expert_thumb">
                            <img src="img/experts/1.png" alt="">
                        </div>
                        <div class="experts_name text-center">
                            <h3>Mirazul Alom</h3>
                            <span>Neurologist</span>
                        </div>
                    </div>
                    <div class="single_expert">
                        <div class="expert_thumb">
                            <img src="img/experts/2.png" alt="">
                        </div>
                        <div class="experts_name text-center">
                            <h3>Mirazul Alom</h3>
                            <span>Neurologist</span>
                        </div>
                    </div>
                    <div class="single_expert">
                        <div class="expert_thumb">
                            <img src="img/experts/3.png" alt="">
                        </div>
                        <div class="experts_name text-center">
                            <h3>Mirazul Alom</h3>
                            <span>Neurologist</span>
                        </div>
                    </div>
                    <div class="single_expert">
                        <div class="expert_thumb">
                            <img src="img/experts/4.png" alt="">
                        </div>
                        <div class="experts_name text-center">
                            <h3>Mirazul Alom</h3>
                            <span>Neurologist</span>
                        </div>
                    </div>
                    <div class="single_expert">
                        <div class="expert_thumb">
                            <img src="img/experts/1.png" alt="">
                        </div>
                        <div class="experts_name text-center">
                            <h3>Mirazul Alom</h3>
                            <span>Neurologist</span>
                        </div>
                    </div>
                    <div class="single_expert">
                        <div class="expert_thumb">
                            <img src="img/experts/2.png" alt="">
                        </div>
                        <div class="experts_name text-center">
                            <h3>Mirazul Alom</h3>
                            <span>Neurologist</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Index Popup', 'index-popup', '', null, '<form id="test-form" class="white-popup-block mfp-hide">
    <div class="popup_box ">
        <div class="popup_inner">
            <h3>Make an Appointment</h3>

                <div class="row">
                    <div class="col-xl-6">
                        <input id="datepicker" placeholder="Pick date">
                    </div>
                    <div class="col-xl-6">
                        <input id="datepicker2" placeholder="Suitable time">
                    </div>
                    <div class="col-xl-6">
                        <select class="form-select wide" id="default-select">
                            <option data-display="Select Department">Department</option>
                            <option value="1">Eye Care</option>
                            <option value="2">Physical Therapy</option>
                            <option value="3">Dental Care</option>
                        </select>
                    </div>
                    <div class="col-xl-6">
                        <select class="form-select wide" id="default-select">
                            <option data-display="Doctors">Doctors</option>
                            <option value="1">Mirazul Alom</option>
                            <option value="2">Monzul Alom</option>
                            <option value="3">Azizul Isalm</option>
                        </select>
                    </div>
                    <div class="col-xl-6">
                        <input type="text" placeholder="Name">
                    </div>
                    <div class="col-xl-6">
                        <input type="text" placeholder="Phone no.">
                    </div>
                    <div class="col-xl-12">
                        <input type="email" placeholder="Email">
                    </div>
                    <div class="col-xl-12">
                        <button type="submit" class="boxed-btn3">Confirm</button>
                    </div>
                </div>

        </div>
    </div></form>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Header Top', 'layout-header-top', '', null, '        <div class="header-top_area">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-md-6 ">
                       {{block/layout-header-social-media-links}}
                    </div>
                    <div class="col-xl-6 col-md-6">
                       {{block/layout-header-short-contact-list}}
                    </div>
                </div>
            </div>
        </div>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Service #2', 'service-2', '                    <div class="icon">
                        <i class="flaticon-emergency-call"></i>
                    </div>
                    <h3>Emergency Care</h3>
                    <p>Clinical excellence must be the priority for any health care service provider.</p>
                    <a href="#" class="boxed-btn3-white">+10 672 356 3567</a>
', (SELECT id FROM block_layouts WHERE identifier = 'single-service'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Our Department Area', 'our-department-area', '', null, '<div class="our_department_area">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                {{block/our-department-header}}
            </div>
        </div>
        <div class="row">
            <div class="col-xl-4 col-md-6 col-lg-4">
{{block/our-department-1}}
            </div>
            <div class="col-xl-4 col-md-6 col-lg-4">
{{block/our-department-2}}
            </div>
            <div class="col-xl-4 col-md-6 col-lg-4">
{{block/our-department-3}}
            </div>
            <div class="col-xl-4 col-md-6 col-lg-4">
{{block/our-department-4}}
            </div>
            <div class="col-xl-4 col-md-6 col-lg-4">
{{block/our-department-5}}
            </div>
            <div class="col-xl-4 col-md-6 col-lg-4">
{{block/our-department-6}}
            </div>
        </div>
    </div>
</div>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Slider Slide #1', 'slider-slide-1', '<h3> <span>Health care</span> <br>
For Hole Family </h3>
<p>In healthcare sector, service excellence is the facility of <br> the hospital as
healthcare service provider to consistently.</p>
<a href="#" class="boxed-btn3">Check Our Services</a>
', (SELECT id FROM block_layouts WHERE identifier = 'slider-slide'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Upgrade Notification', 'layout-upgrade-notification',
        '<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>',
        null, '<!--[if lte IE 9]>
            {{ var/body }}
        <![endif]-->');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Business Expert Container #1', 'business-expert-container-1', '                                <h3>Leading edge care for Your family</h3>
                                <p>Esteem spirit temper too say adieus who direct esteem.
                                    It esteems luckily picture placing drawing. Apartments frequently or motionless on
                                    reasonable projecting expression.
                                </p>
', null, '                            <div class="business_info">
                                <div class="icon">
                                    <i class="flaticon-first-aid-kit"></i>
                                </div>
                                {{ var/body }}
                            </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Our Department #3', 'our-department-3', '                        <h3><a href="#">Dental Care</a></h3>
                        <p>Esteem spirit temper too say adieus who direct esteem.</p>
', null, '                <div class="single_department">
                    <div class="department_thumb">
                        <img src="img/department/3.png" alt="">
                    </div>
                    <div class="department_content">
                        {{ var/body }}
                        <a href="#" class="learn_more">Learn More</a>
                    </div>
                </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Emergency Contact Area', 'emergency-contact-area', '', null, '<div class="Emergency_contact">
    <div class="conatiner-fluid p-0">
        <div class="row no-gutters">
            <div class="col-xl-6">
                <div class="single_emergency d-flex align-items-center justify-content-center emergency_bg_1 overlay_skyblue">
                    <div class="info">
                        <h3>For Any Emergency Contact</h3>
                        <p>Esteem spirit temper too say adieus.</p>
                    </div>
                    <div class="info_button">
                        <a href="#" class="boxed-btn3-white">+10 378 4673 467</a>
                    </div>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="single_emergency d-flex align-items-center justify-content-center emergency_bg_2 overlay_skyblue">
                    <div class="info">
                        <h3>Make an Online Appointment</h3>
                        <p>Esteem spirit temper too say adieus.</p>
                    </div>
                    <div class="info_button">
                        <a href="#" class="boxed-btn3-white">Make an Appointment</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Slider Slide #3', 'slider-slide-3', '<h3> <span>Health care</span> <br>
For Hole Family </h3>
<p>In healthcare sector, service excellence is the facility of <br> the hospital as
healthcare service provider to consistently.</p>
<a href="#" class="boxed-btn3">Check Our Services</a>
', (SELECT id FROM block_layouts WHERE identifier = 'slider-slide'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Asana Korim 3', 'asana-korim-3', '                                <p>Repudiandae tempore et explicabo tempore enim est neque animi.<br>
                                    Cumque voluptatem eos molestiae iusto cupiditate ad quia sit. Incidunt fugiat architecto tempore sint. Sed qui iure vero.
                                    <br>
                                    Fusce ac mattis nulla. Morbi eget ornare dui. </p>
', null, '                            <div class="testmonial_info text-center">
                                <div class="quote">
                                    <i class="flaticon-straight-quotes"></i>
                                </div>
                                {{ var/body }}
                                <div class="testmonial_author">
                                    <h4>{{ var/title }}</h4>
                                </div>
                            </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Service Area', 'service-area', '', null, '<div class="service_area">
    <div class="container p-0">
        <div class="row no-gutters">
            <div class="col-xl-4 col-md-4">
{{block/service-1}}
            </div>
            <div class="col-xl-4 col-md-4">
{{block/service-2}}
            </div>
            <div class="col-xl-4 col-md-4">
{{block/service-3}}
            </div>
        </div>
    </div>
</div>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Header Bottom', 'layout-header-bottom', '', null, '        <div id="sticky-header" class="main-header-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-3 col-lg-2">
                        {{block/layout-header-logo}}
                    </div>
                    <div class="col-xl-6 col-lg-7">
                        {{block/layout-header-navigation}}
                    </div>
                    <div class="col-xl-3 col-lg-3 d-none d-lg-block">
                        {{block/layout-header-appointment}}
                    </div>
                    <div class="col-12">
                        {{block/layout-header-mobile-menu}}
                    </div>
                </div>
            </div>
        </div>');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Header Logo', 'layout-header-logo', '                            <p><a href="/">
                                <img src="/img/logo.png" alt="">
                            </a></p>
', null, '                        <div class="logo">
                            {{var/body}}
                        </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Asana Korim 2', 'asana-korim-2', '                                <p>Architecto debitis et voluptatem omnis cumque reiciendis unde. Assumenda explicabo blanditiis expedita accusantium aperiam. Doloremque enim quisquam sit doloremque et nihil.
                                    <br>
                                    Consequatur quia minus eum neque libero sint eos in. Optio aut nemo labore dolor.</p>
', null, '                            <div class="testmonial_info text-center">
                                <div class="quote">
                                    <i class="flaticon-straight-quotes"></i>
                                </div>
                                {{ var/body }}
                                <div class="testmonial_author">
                                    <h4>{{ var/title }}</h4>
                                </div>
                            </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Header Social Media Links', 'layout-header-social-media-links', '', null, '                        <div class="social_media_links">
                           {{list/layout-header-social-media-links list-tag="" item-tag=""}}
                        </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Business Expert Navigation', 'business-expert-navigation', '                    <ul class="nav" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Excellent Services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Qualified Doctors</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Emergency Departments</a>
                        </li>
                    </ul>
', (SELECT id FROM block_layouts WHERE identifier = 'empty'), '');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Our Department Header', 'our-department-header', '                    <h3>Our Departments</h3>
                    <p>Esteem spirit temper too say adieus who direct esteem. <br>
                        It esteems luckily or picture placing drawing. </p>
', null, '                <div class="section_title text-center mb-55">
                    {{ var/body }}
                </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Our Department #2', 'our-department-2', '                        <h3><a href="#">Physical Therapy</a></h3>
                        <p>Esteem spirit temper too say adieus who direct esteem.</p>
', null, '                <div class="single_department">
                    <div class="department_thumb">
                        <img src="img/department/2.png" alt="">
                    </div>
                    <div class="department_content">
                        {{ var/body }}
                        <a href="#" class="learn_more">Learn More</a>
                    </div>
                </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Our Department #1', 'our-department-1', '                        <h3><a href="#">Eye Care</a></h3>
                        <p>Esteem spirit temper too say adieus who direct esteem.</p>
', null, '                <div class="single_department">
                    <div class="department_thumb">
                        <img src="img/department/1.png" alt="">
                    </div>
                    <div class="department_content">
                        {{ var/body }}
                        <a href="#" class="learn_more">Learn More</a>
                    </div>
                </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Our Department #5', 'our-department-5', '                        <h3><a href="#">Skin Surgery</a></h3>
                        <p>Esteem spirit temper too say adieus who direct esteem.</p>
', null, '                <div class="single_department">
                    <div class="department_thumb">
                        <img src="img/department/5.png" alt="">
                    </div>
                    <div class="department_content">
                        {{ var/body }}
                        <a href="#" class="learn_more">Learn More</a>
                    </div>
                </div>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Layout Header', 'layout-header', '', null, '<header>
    <div class="header-area ">
        {{block/layout-header-top}}
        {{block/layout-header-bottom}}
    </div>
</header>
');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Testimonial Area', 'testimonial-area', '', null, '    <!-- testmonial_area_start -->
    <div class="testmonial_area">
        <div class="testmonial_active owl-carousel">
            <div class="single-testmonial testmonial_bg_1 overlay2">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-10 offset-xl-1">
                            {{ block/asana-korim }}
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-testmonial testmonial_bg_2 overlay2">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-10 offset-xl-1">
                            {{ block/asana-korim-2 }}
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-testmonial testmonial_bg_1 overlay2">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-10 offset-xl-1">
                            {{ block/asana-korim-3 }}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- testmonial_area_end -->');
INSERT IGNORE INTO blocks (id, title, identifier, `body`, layout_id, layout)
VALUES (UUID(), 'Slider Area', 'slider-area', '', null, '<div class="slider_area">
    <div class="slider_active owl-carousel">
        <div class="single_slider  d-flex align-items-center slider_bg_2">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        {{block/slider-slide-1}}
                    </div>
                </div>
            </div>
        </div>
        <div class="single_slider  d-flex align-items-center slider_bg_1">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        {{block/slider-slide-2}}
                    </div>
                </div>
            </div>
        </div>
        <div class="single_slider  d-flex align-items-center slider_bg_2">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        {{block/slider-slide-3}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>');

UPDATE blocks
SET deleted_at = NULL
WHERE identifier IN
      ('layout-upgrade-notification',
       'layout-header', 'layout-header-top', 'layout-header-social-media-links', 'layout-header-short-contact-list',
       'layout-header-bottom', 'layout-header-logo', 'layout-header-navigation', 'layout-header-appointment',
       'layout-header-mobile-menu',
       'layout-footer', 'layout-footer-top', 'layout-footer-column-1', 'layout-footer-column-2',
       'layout-footer-column-3', 'layout-footer-column-4', 'layout-footer-logo', 'layout-footer-text-below-logo',
       'layout-footer-social-links',
       'layout-footer-bottom', 'layout-footer-copyright',
       'our-department-1', 'our-department-2', 'our-department-3', 'our-department-4', 'our-department-5',
       'our-department-6',
       'slider-slide-1', 'slider-slide-2', 'slider-slide-3', 'slider-slide-4',
       'service-1', 'service-2', 'service-3',
       'business-expert-container-1', 'business-expert-container-2', 'business-expert-container-3',
       'slider-area', 'service-area', 'welcome-docmed-area', 'our-department-area', 'testimonial-area',
       'business-expert-area', 'expert-doctors-area', 'emergency-contact-area');

--
-- Table structure and data for table `page_layouts`
--

INSERT IGNORE INTO page_layouts (id, `name`, identifier)
VALUES (UUID(), 'Docmed Index', 'docmed-index');

UPDATE page_layouts
SET `name`     = 'Docmed Index',
    `body`     = '{{block/layout-upgrade-notification}}

{{block/layout-header}}

{{block/slider-area}}

{{block/service-area}}

{{block/welcome-docmed-area}}

{{block/our-department-area}}

{{block/testimonial-area}}

{{block/business-expert-area}}

{{block/expert-doctors-area}}

{{block/emergency-contact-area}}

{{block/layout-footer}}

{{block/index-popup}}
',
    header     = '',
    footer     = '',
    css_files  = '/css/animate.css
/css/bootstrap.min.css
/css/flaticon.css
/css/font-awesome.min.css
/css/gijgo.css
/css/magnific-popup.css
/css/nice-select.css
/css/owl.carousel.min.css
/css/slicknav.css
/css/style.css
/css/theme-default.css
/css/themify-icons.css
/css/adminphp-fix.css',
    js_files   = '/js/vendor/jquery-1.12.4.min.js
/js/vendor/modernizr-3.5.0.min.js
/js/ajax-form.js
/js/contact.js
/js/gijgo.min.js
/js/imagesloaded.pkgd.min.js
/js/isotope.pkgd.min.js
/js/jquery.ajaxchimp.min.js
/js/jquery.counterup.min.js
/js/jquery.form.js
/js/jquery.magnific-popup.min.js
/js/jquery.scrollUp.min.js
/js/jquery.slicknav.min.js
/js/jquery.validate.min.js
/js/mail-script.js
/js/main.js
/js/nice-select.min.js
/js/owl.carousel.min.js
/js/plugins.js
/js/popper.min.js
/js/scrollIt.js
/js/waypoints.min.js
/js/wow.min.js',
    classes    = '',
    updated_at = NOW(),
    deleted_at = NULL
WHERE identifier = 'docmed-index';

INSERT IGNORE INTO page_layouts (id, `name`, identifier)
VALUES (UUID(), 'Docmed All', 'docmed-all');

UPDATE page_layouts
SET `name`     = 'Docmed All',
    `body`     = '{{block/layout-upgrade-notification}}

{{block/layout-header}}

<div class="docmed-all">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <h1>{{var/title}}</h1>
                {{var/lead}}
                <div class="body">
                    {{var/body}}
                </div>
            </div>
        </div>
    </div>
</div>

{{block/layout-footer}}

{{block/index-popup}}
',
    header     = '',
    footer     = '',
    css_files  = '/css/animate.css
/css/bootstrap.min.css
/css/flaticon.css
/css/font-awesome.min.css
/css/gijgo.css
/css/magnific-popup.css
/css/nice-select.css
/css/owl.carousel.min.css
/css/slicknav.css
/css/style.css
/css/theme-default.css
/css/themify-icons.css
/css/adminphp-fix.css',
    js_files   = '/js/vendor/jquery-1.12.4.min.js
/js/vendor/modernizr-3.5.0.min.js
/js/ajax-form.js
/js/contact.js
/js/gijgo.min.js
/js/imagesloaded.pkgd.min.js
/js/isotope.pkgd.min.js
/js/jquery.ajaxchimp.min.js
/js/jquery.counterup.min.js
/js/jquery.form.js
/js/jquery.magnific-popup.min.js
/js/jquery.scrollUp.min.js
/js/jquery.slicknav.min.js
/js/jquery.validate.min.js
/js/mail-script.js
/js/main.js
/js/nice-select.min.js
/js/owl.carousel.min.js
/js/plugins.js
/js/popper.min.js
/js/scrollIt.js
/js/waypoints.min.js
/js/wow.min.js',
    classes    = '',
    updated_at = NOW(),
    deleted_at = NULL
WHERE identifier = 'docmed-all';

UPDATE page_layouts
SET deleted_at = NULL
WHERE identifier IN ('empty');

--
-- Table structure and data for table `page_categories`
--

INSERT IGNORE INTO page_categories (id, `name`, identifier)
VALUES (UUID(), 'Blog', 'blog');
INSERT IGNORE INTO page_categories (id, `name`, identifier)
VALUES (UUID(), 'News', 'news');

UPDATE page_categories
SET deleted_at = NULL
WHERE identifier IN ('blog', 'news');

--
-- Table structure and data for table `pages`
--
INSERT IGNORE INTO pages (id, identifier, title, meta_description, meta_robots, meta_author, meta_copyright,
                          meta_keywords, meta_og_title, meta_og_image, meta_og_description, `lead`, `body`, is_draft,
                          category_id, layout_id, layout, header, footer, css_files, js_files, classes)
VALUES (UUID(), 'department', 'Department', '', '', '', '', '', '', '', '',
        'Nisi ab doloribus ut qui rerum. Qui officia dolore nisi ut alias omnis ut voluptatum. Cum voluptatem qui non ullam rerum autem iste. Maiores eos sed non. Vel earum temporibus ullam facilis fuga.',
        '<p>Natus minus et maiores. Sed autem maxime in ut asperiores blanditiis dolorum quam. Accusamus illum illo omnis voluptas iste repellendus. Aspernatur et sit in sed porro explicabo asperiores aut. Omnis eveniet sunt iste eum modi omnis ipsa saepe.</p>

<p>Architecto sint aut maiores dolores asperiores voluptatem. Excepturi distinctio minus libero iste voluptatem doloribus. Accusamus et possimus exercitationem sit eum dolores illo.</p>

<p>Est pariatur expedita ratione quidem delectus ducimus aut. Non fuga voluptates magnam. Ut veritatis debitis et voluptatem eos unde non.</p>

<p>Aliquam sed modi accusantium commodi veniam. Reprehenderit ex iure et. Assumenda et quidem omnis et nihil. Quidem inventore illo officia sit similique possimus doloribus. Velit veniam sunt maxime et officiis. Quisquam doloremque voluptate unde cupiditate cumque voluptas recusandae.</p>
', 0, null, (SELECT id FROM page_layouts WHERE identifier = 'docmed-all'), '', '', '', '', '', '');

INSERT IGNORE INTO pages (id, identifier, title, meta_description, meta_robots, meta_author, meta_copyright,
                          meta_keywords, meta_og_title, meta_og_image, meta_og_description, `lead`, `body`, is_draft,
                          category_id, layout_id, layout, header, footer, css_files, js_files, classes)
VALUES (UUID(), 'doctors', 'Doctors', '', '', '', '', '', '', '', '',
        'Quod autem accusantium accusantium omnis quas quaerat. Enim ex laboriosam possimus repellat sit similique ullam. Vel est ullam eum in sed. Aut architecto optio nostrum consequatur sit quae.',
        '<p>Aperiam ratione nam dolor laboriosam illo. Consectetur dolorem repellendus consequatur. Nam libero assumenda in est voluptates.</p>

<p>Ipsa beatae ab qui error ut eum delectus animi. Aperiam atque illo totam rerum. Dolores dignissimos ab sit culpa veniam.</p>

<p>Voluptatibus voluptates voluptatem aspernatur nihil quas sed. Dolorem natus accusantium est. Corrupti a debitis atque adipisci delectus quis odio velit. Tempora sit et non. Ut quia autem cum pariatur et sit maiores.</p>

<p>Sint voluptas hic amet culpa dolore quia. Vel id iusto deserunt assumenda quam earum. Cumque et nihil qui rem. Rerum et ipsum ullam et enim dolor temporibus ipsa.</p>
', 0, null, (SELECT id FROM page_layouts WHERE identifier = 'docmed-all'), '', '', '', '', '', '');

INSERT IGNORE INTO pages (id, identifier, title, meta_description, meta_robots, meta_author, meta_copyright,
                          meta_keywords, meta_og_title, meta_og_image, meta_og_description, `lead`, `body`, is_draft,
                          category_id, layout_id, layout, header, footer, css_files, js_files, classes)
VALUES (UUID(), 'elements', 'Elements', '', '', '', '', '', '', '', '',
        'Aliquam numquam quo sint nisi qui. Aspernatur dolor sint doloremque porro praesentium omnis tenetur. Accusantium animi laudantium aliquam odio veniam qui. Quae dolorem iusto qui dolor. Quam dolorem itaque nihil libero fugiat reprehenderit id placeat. Enim quo vero ipsa.',
        '<p>Voluptatem eveniet rerum sit. Qui vitae quis temporibus atque voluptas optio reiciendis fuga. Consequuntur similique quo et. Nihil culpa vitae cum temporibus aut voluptatem fuga. Delectus nemo animi aut saepe adipisci. Velit corrupti necessitatibus dicta cum optio mollitia omnis cumque.</p>

<p>Consequuntur dolores amet soluta sit qui placeat blanditiis. Harum laborum quae possimus nihil id. Qui adipisci iste voluptate voluptatem.</p>

<p>Iusto reiciendis ut cupiditate. Dolore ea sed porro autem natus ipsum. Sint quidem tempora at beatae.</p>

<p>Rerum ex aut unde tempora cumque soluta ut. Nihil quia quidem accusantium dolorem. Minima repudiandae tenetur voluptas. Est ut minus eum consequatur consequatur dolorum voluptatem iusto.</p>
', 0, null, (SELECT id FROM page_layouts WHERE identifier = 'docmed-all'), '', '', '', '', '', '');

INSERT IGNORE INTO pages (id, identifier, title, meta_description, meta_robots, meta_author, meta_copyright,
                          meta_keywords, meta_og_title, meta_og_image, meta_og_description, `lead`, `body`, is_draft,
                          category_id, layout_id, layout, header, footer, css_files, js_files, classes)
VALUES (UUID(), 'about', 'About', '', '', '', '', '', '', '', '',
        'Illum qui labore officiis voluptas libero libero. Qui tempore assumenda et qui perferendis. Neque iste provident doloribus.',
        '<p>Soluta odit ab id voluptatem enim. Numquam accusamus sed modi. Sed ipsa ea voluptatem impedit itaque. Ut rerum vero quia voluptas ratione. Voluptas amet et ut exercitationem. Rerum sint facilis sequi explicabo itaque tempore.</p>

<p>Impedit omnis eligendi odit nulla voluptatem aliquid exercitationem. Culpa quaerat in aut laboriosam. Explicabo suscipit ratione nam laborum aspernatur dolores. Adipisci rerum odio consequuntur nobis quas.</p>

<p>Quia ut quos quaerat natus velit aspernatur excepturi iusto. Temporibus dignissimos velit eveniet quidem ipsam et repellendus voluptatum. Tempora exercitationem eius asperiores quisquam. Illo dolorem nam magni enim modi minus autem sunt. Rem hic eveniet omnis suscipit quo quo ab.</p>

<p>Ducimus quibusdam alias rerum voluptatem assumenda vel. Deserunt qui sint delectus eveniet ullam qui. Molestiae molestias et pariatur. Rerum qui sunt magnam qui.</p>
', 0, null, (SELECT id FROM page_layouts WHERE identifier = 'docmed-all'), '', '', '', '', '', '');

INSERT IGNORE INTO pages (id, identifier, title, meta_description, meta_robots, meta_author, meta_copyright,
                          meta_keywords, meta_og_title, meta_og_image, meta_og_description, `lead`, `body`, is_draft,
                          category_id, layout_id, layout, header, footer, css_files, js_files, classes)
VALUES (UUID(), 'contact', 'Contact', '', '', '', '', '', '', '', '',
        'Nostrum sunt corporis ipsam perspiciatis. Quasi harum minus magnam aut voluptatem. Totam aut eum eum labore. Porro eos explicabo voluptas iusto voluptate unde sequi.

Aut pariatur mollitia dolorem. Ut aut quia cum qui. Vel ut omnis earum.',
        '<p>Exercitationem delectus natus autem. Autem iure non rem consequatur consequatur est officiis vitae. Nesciunt eligendi tempora quia ipsum expedita harum sapiente harum. Aut repellat officiis dolor quaerat perspiciatis commodi laudantium. Autem nihil architecto laborum iste dolorum.</p>

<p>Libero impedit est alias. Omnis quaerat ab consectetur amet. Sint id nesciunt non ea quod. Ad aut sit unde quam sint ipsum neque. Non quibusdam repudiandae facilis.</p>

<p>Quia est dolorem id minus illo nam. Aliquam delectus debitis architecto ratione ea explicabo. Est molestiae est sint quos non veritatis. Asperiores nam ipsam asperiores dolorum numquam consequatur.</p>
', 0, null, (SELECT id FROM page_layouts WHERE identifier = 'docmed-all'), '', '', '', '', '', '');

UPDATE pages
SET deleted_at = NULL
WHERE identifier IN ('department', 'doctors', 'elements', 'about', 'contact');

UPDATE pages
SET meta_description    = 'AbterCMS is a security first, simple and flexible open source content management system for both educational and commercial usecases.'
  , meta_robots         = ''
  , meta_author         = ''
  , meta_copyright      = ''
  , meta_keywords       = 'cms, open source'
  , meta_og_title       = ''
  , meta_og_image       = ''
  , meta_og_description = ''
  , `lead`              = ''
  , `body`              = 'Hello, World!'
  , is_draft            = 0
  , category_id         = null
  , layout_id           = (SELECT id FROM page_layouts WHERE identifier = 'docmed-index')
  , layout              = ''
  , header              = ''
  , footer              = ''
  , css_files           = ''
  , js_files            = ''
  , classes             = ''
  , deleted_at          = NULL
WHERE identifier = 'index';

UPDATE pages
SET deleted_at = NULL
WHERE identifier IN ('department', 'index');

--
-- Table structure and data for table `lists`
--

INSERT IGNORE INTO lists (id, `name`, identifier, classes, protected, with_links, with_label_links, with_html,
                          with_images, with_classes)
VALUES (UUID(), 'Layout Header Short Contact List', 'layout-header-short-contact-list', '', 0, 1, 0, 0, 0, 0);
INSERT IGNORE INTO lists (id, `name`, identifier, classes, protected, with_links, with_label_links, with_html,
                          with_images, with_classes)
VALUES (UUID(), 'Layout Footer Social Links', 'layout-footer-social-links', '', 0, 1, 0, 0, 0, 0);
INSERT IGNORE INTO lists (id, `name`, identifier, classes, protected, with_links, with_label_links, with_html,
                          with_images, with_classes)
VALUES (UUID(), 'Layout Header Social Media Links', 'layout-header-social-media-links', '', 0, 1, 0, 0, 0, 1);

UPDATE lists
SET deleted_at = NULL
WHERE identifier IN
      ('layout-header-short-contact-list', 'layout-header-social-media-links', 'layout-footer-social-links');

--
-- Table structure and data for table `list_items`
--

UPDATE list_items
SET deleted_at = NOW()
WHERE list_id IN (SELECT id FROM lists WHERE identifier IN ('layout-header-social-media-links', 'layout-footer-social-links', 'layout-header-short-contact-list'));

INSERT IGNORE INTO list_items (id, list_id, label, label_href, content, content_href, img_src, img_alt, img_href, classes)
VALUES (UUID(), (SELECT id FROM lists WHERE identifier = 'layout-header-social-media-links'), 'facebook', '',
        '<i class="fa fa-linkedin"></i>', '#', '', '', '', 'facebook-item');

INSERT IGNORE INTO list_items (id, list_id, label, label_href, content, content_href, img_src, img_alt, img_href, classes)
VALUES (UUID(), (SELECT id FROM lists WHERE identifier = 'layout-footer-social-links'), 'Twitter', '',
        ' <i class="ti-twitter-alt"></i>', '#', '', '', '', '');

INSERT IGNORE INTO list_items (id, list_id, label, label_href, content, content_href, img_src, img_alt, img_href, classes)
VALUES (UUID(), (SELECT id FROM lists WHERE identifier = 'layout-header-social-media-links'), 'linkedin', '',
        '<i class="fa fa-facebook"></i>', '#', '', '', '', 'linkedin-item');

INSERT IGNORE INTO list_items (id, list_id, label, label_href, content, content_href, img_src, img_alt, img_href, classes)
VALUES (UUID(), (SELECT id FROM lists WHERE identifier = 'layout-header-short-contact-list'), 'Phone', '',
        '<i class="fa fa-phone"></i> 160160</a>', '#', '', '', '', '');

INSERT IGNORE INTO list_items (id, list_id, label, label_href, content, content_href, img_src, img_alt, img_href, classes)
VALUES (UUID(), (SELECT id FROM lists WHERE identifier = 'layout-footer-social-links'), 'Facebook', '',
        '<i class="ti-facebook"></i>', '#', '', '', '', '');

INSERT IGNORE INTO list_items (id, list_id, label, label_href, content, content_href, img_src, img_alt, img_href, classes)
VALUES (UUID(), (SELECT id FROM lists WHERE identifier = 'layout-footer-social-links'), 'Instagram', '',
        ' <i class="fa fa-instagram"></i>', '#', '', '', '', '');

INSERT IGNORE INTO list_items (id, list_id, label, label_href, content, content_href, img_src, img_alt, img_href, classes)
VALUES (UUID(), (SELECT id FROM lists WHERE identifier = 'layout-header-short-contact-list'), 'Email', '',
        '<i class="fa fa-envelope"></i> <span class="__cf_email__" data-cfemail="e78e898188a78388848a8283c984888a">[email&#160;protected]</span>',
        '#', '', '', '', '');
