SET @old_site = "http://marchfarm.com"; 
SET @new_site = "http://mcdevmfm.wpengine.com/"; 

UPDATE wp_options SET option_value = replace(option_value, @old_site, @new_site) WHERE option_name = 'home' OR option_name = 'siteurl';  
UPDATE wp_posts SET post_content = replace(post_content, @old_site, @new_site);  
UPDATE wp_links SET link_url = replace(link_url, @old_site, @new_site);  
UPDATE wp_postmeta SET meta_value = replace(meta_value, @old_site, @new_site);