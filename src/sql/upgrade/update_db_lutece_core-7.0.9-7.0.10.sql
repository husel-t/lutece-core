DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.layout.code';
DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.layout.class';
DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.layout.menu.checkbox';
INSERT INTO core_datastore (entity_key, entity_value) VALUES ('portal.site.site_property.layout.menu.checkbox', '0');
DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.layout.darkmode.checkbox';
INSERT INTO core_datastore (entity_key, entity_value) VALUES ('portal.site.site_property.layout.darkmode.checkbox', '0');
DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.layout.readmode.checkbox';
INSERT INTO core_datastore (entity_key, entity_value) VALUES ('portal.site.site_property.layout.readmode.checkbox', '0');
DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.layout.user.readmode.show.checkbox';
INSERT INTO core_datastore (entity_key, entity_value) VALUES ('portal.site.site_property.layout.user.readmode.show.checkbox', '0');
DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.layout.user.darkmode.show.checkbox';
INSERT INTO core_datastore (entity_key, entity_value) VALUES ('portal.site.site_property.layout.user.darkmode.show.checkbox', '1');
DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.layout.user.menumode.show.checkbox';
INSERT INTO core_datastore (entity_key, entity_value) VALUES ('portal.site.site_property.layout.user.menumode.show.checkbox', '1');
DELETE FROM core_datastore  WHERE entity_key='portal.site.site_property.avatar_default';
INSERT INTO core_datastore VALUES ('portal.site.site_property.avatar_default', 'themes/admin/shared/unknown.svg');
DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.bo.showXs.checkbox';
INSERT INTO core_datastore (entity_key, entity_value) VALUES ('portal.site.site_property.bo.showXs.checkbox', '1');
DELETE FROM core_datastore WHERE entity_key='portal.site.site_property.bo.showXsWarning.checkbox';
INSERT INTO core_datastore (entity_key, entity_value) VALUES ('portal.site.site_property.bo.showXsWarning.checkbox', '0');
UPDATE core_admin_right SET icon_url = 'ti ti-home-edit' WHERE id_right='CORE_ADMIN_SITE';
UPDATE core_admin_right SET icon_url = 'ti ti-dashboard' WHERE id_right='CORE_ADMINDASHBOARD_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-clock-edit' WHERE id_right='CORE_CACHE_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-timeline-event' WHERE id_right='CORE_DAEMONS_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-layout-dashboard' WHERE id_right='CORE_DASHBOARD_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-tools' WHERE id_right='CORE_EDITORS_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-apps' WHERE id_right='CORE_FEATURES_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-list-detail' WHERE id_right='CORE_LEVEL_RIGHT_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-link' WHERE id_right='CORE_LINK_SERVICE_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-list-search' WHERE id_right='CORE_LOGS_VISUALISATION';
UPDATE core_admin_right SET icon_url = 'ti ti-mail-cog' WHERE id_right='CORE_MAILINGLISTS_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-layout-board' WHERE id_right='CORE_PAGE_TEMPLATE_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-apps-filled' WHERE id_right='CORE_PLUGINS_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-checklist' WHERE id_right='CORE_PROPERTIES_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-user-check' WHERE id_right='CORE_RBAC_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-gavel' WHERE id_right='CORE_RIGHT_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-list-check' WHERE id_right='CORE_ROLES_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-settings-search' WHERE id_right='CORE_SEARCH_INDEXATION';
UPDATE core_admin_right SET icon_url = 'ti ti-database-search' WHERE id_right='CORE_SEARCH_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-brush' WHERE id_right='CORE_STYLES_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-file-code' WHERE id_right='CORE_STYLESHEET_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-code-circle-2' WHERE id_right='CORE_TEMPLATES_AUTO_INCLUDES_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-users' WHERE id_right='CORE_USERS_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-users-group' WHERE id_right='CORE_WORKGROUPS_MANAGEMENT';
UPDATE core_admin_right SET icon_url = 'ti ti-file-export' WHERE id_right='CORE_XSL_EXPORT_MANAGEMENT';
ALTER TABLE core_portlet_type ADD COLUMN icon_name VARCHAR(50) NULL DEFAULT NULL AFTER modify_specific_form;
UPDATE core_portlet_type SET icon_name='circles-relation' WHERE id_portlet_type='ALIAS_PORTLET';