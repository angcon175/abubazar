drop trigger if exists `after_ads_insert`;
delimiter $$
create trigger `after_ads_insert` after insert on `ads` for each row begin
declare var_total_ad int(7) default 0;
declare var_total_sad int(7) default 0;


select count(*) into var_total_ad
from ads where category_id = new.category_id;

select count(*) into var_total_sad
from ads where subcategory_id = new.subcategory_id;

update categories set total_ad = var_total_ad where id = new.category_id;

update sub_categories set total_ad = var_total_sad where id = new.subcategory_id;

end
$$
delimiter ;


drop trigger if exists `after_ads_delete`;
delimiter $$
create trigger `after_ads_delete` after delete on `ads` for each row begin
declare var_total_ad int(7) default 0;
declare var_total_sad int(7) default 0;


select count(*) into var_total_ad
from ads where category_id = old.category_id;

select count(*) into var_total_sad
from ads where subcategory_id = old.subcategory_id;

update categories set total_ad = var_total_ad where id = old.category_id;
update sub_categories set total_ad = var_total_sad where id = old.subcategory_id;

end
$$
delimiter ;