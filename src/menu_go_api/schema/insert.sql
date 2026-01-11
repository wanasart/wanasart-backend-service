INSERT INTO categories (cat_name, cat_description) VALUES
('จานเดียว', 'อาหารจานเดียว'),
('ย่าง / ปิ้ง', 'เมนูย่าง ปิ้ง'),
('สเต๊ก', 'เมนูสเต๊ก'),
('พิซซ่า', 'พิซซ่า'),
('ของทานเล่น', 'ของทานเล่น'),
('สลัด', 'สลัดเพื่อสุขภาพ'),
('ซีฟู้ด', 'อาหารทะเล'),
('มังสวิรัติ', 'อาหารมังสวิรัติ'),
('เครื่องดื่ม', 'เครื่องดื่ม'),
('ของหวาน', 'ของหวาน');

INSERT INTO menus
(mnu_cat_id, mnu_name, mnu_image_url, mnu_price, mnu_is_recommended)
VALUES
-- ===== จานเดียว =====
((SELECT cat_id FROM categories WHERE cat_name='จานเดียว'), 'ข้าวกะเพราหมูสับ', '/img/main/krapao-pork.jpg', 89, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='จานเดียว'), 'ข้าวกะเพราไก่', '/img/main/krapao-chicken.jpg', 89, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='จานเดียว'), 'ข้าวผัดกุ้ง', '/img/main/fried-rice-shrimp.jpg', 99, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='จานเดียว'), 'ข้าวหมูกระเทียม', '/img/main/garlic-pork.jpg', 89, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='จานเดียว'), 'ข้าวไข่เจียว', '/img/main/omelet-rice.jpg', 69, FALSE),

-- ===== ย่าง / ปิ้ง =====
((SELECT cat_id FROM categories WHERE cat_name='ย่าง / ปิ้ง'), 'หมูย่างจิ้มแจ่ว', '/img/grill/grilled-pork.jpg', 149, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='ย่าง / ปิ้ง'), 'ไก่ย่างสมุนไพร', '/img/grill/grilled-chicken.jpg', 159, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='ย่าง / ปิ้ง'), 'เนื้อย่าง', '/img/grill/grilled-beef.jpg', 199, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='ย่าง / ปิ้ง'), 'ซี่โครงหมู BBQ', '/img/grill/bbq-ribs.jpg', 299, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='ย่าง / ปิ้ง'), 'ปลาหมึกย่าง', '/img/grill/grilled-squid.jpg', 189, FALSE),

-- ===== สเต๊ก =====
((SELECT cat_id FROM categories WHERE cat_name='สเต๊ก'), 'สเต๊กหมูพริกไทยดำ', '/img/steak/pork-steak.jpg', 229, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='สเต๊ก'), 'สเต๊กไก่', '/img/steak/chicken-steak.jpg', 199, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='สเต๊ก'), 'สเต๊กแซลมอน', '/img/steak/salmon-steak.jpg', 329, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='สเต๊ก'), 'สเต๊กเนื้อริบอาย', '/img/steak/ribeye.jpg', 399, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='สเต๊ก'), 'สเต๊กหมูซอสเห็ด', '/img/steak/pork-mushroom.jpg', 249, FALSE),

-- ===== พิซซ่า =====
((SELECT cat_id FROM categories WHERE cat_name='พิซซ่า'), 'พิซซ่ามาร์การิต้า', '/img/pizza/margherita.jpg', 199, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='พิซซ่า'), 'พิซซ่าฮาวายเอี้ยน', '/img/pizza/hawaiian.jpg', 219, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='พิซซ่า'), 'พิซซ่าซีฟู้ด', '/img/pizza/seafood.jpg', 259, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='พิซซ่า'), 'พิซซ่าเปปเปอโรนี', '/img/pizza/pepperoni.jpg', 239, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='พิซซ่า'), 'พิซซ่าชีส', '/img/pizza/cheese.jpg', 189, FALSE),

-- ===== ของทานเล่น =====
((SELECT cat_id FROM categories WHERE cat_name='ของทานเล่น'), 'เฟรนช์ฟรายส์', '/img/snack/fries.jpg', 79, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='ของทานเล่น'), 'นักเก็ตไก่', '/img/snack/nugget.jpg', 99, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='ของทานเล่น'), 'ไส้กรอกทอด', '/img/snack/sausage.jpg', 89, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='ของทานเล่น'), 'ปีกไก่ทอด', '/img/snack/fried-wings.jpg', 119, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='ของทานเล่น'), 'ชีสบอล', '/img/snack/cheese-ball.jpg', 99, FALSE),

-- ===== สลัด =====
((SELECT cat_id FROM categories WHERE cat_name='สลัด'), 'ซีซาร์สลัด', '/img/salad/caesar.jpg', 139, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='สลัด'), 'สลัดทูน่า', '/img/salad/tuna.jpg', 129, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='สลัด'), 'สลัดแซลมอน', '/img/salad/salmon.jpg', 169, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='สลัด'), 'สลัดผักรวม', '/img/salad/veggie.jpg', 99, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='สลัด'), 'สลัดอโวคาโด', '/img/salad/avocado.jpg', 159, TRUE),

-- ===== ซีฟู้ด =====
((SELECT cat_id FROM categories WHERE cat_name='ซีฟู้ด'), 'กุ้งอบวุ้นเส้น', '/img/seafood/shrimp-glass-noodle.jpg', 259, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='ซีฟู้ด'), 'ปลากะพงทอดน้ำปลา', '/img/seafood/fish-sauce.jpg', 289, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='ซีฟู้ด'), 'หอยแมลงภู่อบชีส', '/img/seafood/mussel-cheese.jpg', 229, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='ซีฟู้ด'), 'กุ้งทอดกระเทียม', '/img/seafood/garlic-shrimp.jpg', 249, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='ซีฟู้ด'), 'ปลาหมึกผัดไข่เค็ม', '/img/seafood/squid-salted-egg.jpg', 259, TRUE),

-- ===== มังสวิรัติ =====
((SELECT cat_id FROM categories WHERE cat_name='มังสวิรัติ'), 'ผัดผักรวม', '/img/vegan/mixed-veg.jpg', 99, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='มังสวิรัติ'), 'เต้าหู้ทอด', '/img/vegan/fried-tofu.jpg', 89, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='มังสวิรัติ'), 'ข้าวผัดผัก', '/img/vegan/veg-rice.jpg', 89, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='มังสวิรัติ'), 'สลัดเต้าหู้', '/img/vegan/tofu-salad.jpg', 129, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='มังสวิรัติ'), 'ผัดเห็ดรวม', '/img/vegan/mushroom.jpg', 119, TRUE),

-- ===== เครื่องดื่ม =====
((SELECT cat_id FROM categories WHERE cat_name='เครื่องดื่ม'), 'อเมริกาโน่', '/img/drink/americano.jpg', 69, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='เครื่องดื่ม'), 'ลาเต้', '/img/drink/latte.jpg', 79, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='เครื่องดื่ม'), 'คาปูชิโน่', '/img/drink/cappuccino.jpg', 79, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='เครื่องดื่ม'), 'ชาไทย', '/img/drink/thai-tea.jpg', 69, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='เครื่องดื่ม'), 'น้ำอัดลม', '/img/drink/soda.jpg', 39, FALSE),

-- ===== ของหวาน =====
((SELECT cat_id FROM categories WHERE cat_name='ของหวาน'), 'ไอศกรีมวานิลลา', '/img/dessert/vanilla.jpg', 59, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='ของหวาน'), 'บราวนี่ช็อกโกแลต', '/img/dessert/brownie.jpg', 79, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='ของหวาน'), 'เครปเค้ก', '/img/dessert/crepe-cake.jpg', 99, TRUE),
((SELECT cat_id FROM categories WHERE cat_name='ของหวาน'), 'แพนเค้ก', '/img/dessert/pancake.jpg', 89, FALSE),
((SELECT cat_id FROM categories WHERE cat_name='ของหวาน'), 'ชีสเค้ก', '/img/dessert/cheesecake.jpg', 109, TRUE);
