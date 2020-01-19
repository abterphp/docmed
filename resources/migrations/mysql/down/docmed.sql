--
-- Table structure and data for table `block_layouts`
--

UPDATE block_layouts
SET deleted_at = NOW()
WHERE identifier IN
      ('layout-footer-widget', 'index-text-section', 'service-container', 'slider-slide', 'single-service', 'empty');

--
-- Table structure and data for table `blocks`
--

UPDATE blocks
SET deleted_at = NOW()
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

UPDATE page_layouts
SET deleted_at = NOW()
WHERE identifier IN ('department', 'index');

--
-- Table structure and data for table `pages`
--

UPDATE pages
SET layout_id = NULL
WHERE deleted_at IS NULL
  AND layout_id IN (SELECT id FROM page_layouts WHERE identifier IN ('department', 'index'));

UPDATE pages
SET deleted_at = NOW()
WHERE identifier IN ('department', 'index');

--
-- Table structure and data for table `lists`
--

UPDATE lists
SET deleted_at = NOW()
WHERE identifier IN
      ('layout-header-short-contact-list', 'layout-header-social-media-links', 'layout-footer-social-links');

--
-- Table structure and data for table `list_items`
--

UPDATE list_items
SET deleted_at = NOW()
WHERE list_id IN (SELECT id FROM lists WHERE identifier IN ('layout-header-social-media-links', 'layout-footer-social-links', 'layout-header-short-contact-list'));
