---------------------------------[ TABLE ]---------------------------------

CREATE TABLE categories (
    cat_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    cat_name VARCHAR(100) NOT NULL,
    cat_description TEXT,
    cat_is_active BOOLEAN DEFAULT TRUE,
    cat_created_at TIMESTAMP DEFAULT NOW(),
    cat_updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE menus (
    mnu_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    mnu_cat_id UUID REFERENCES categories(cat_id) ON DELETE SET NULL,
    mnu_name VARCHAR(150) NOT NULL,
    mnu_image_url TEXT,
    mnu_price NUMERIC(10,2) NOT NULL,
    mnu_is_recommended BOOLEAN DEFAULT FALSE,
    mnu_is_active BOOLEAN DEFAULT TRUE,
    mnu_created_at TIMESTAMP DEFAULT NOW(),
    mnu_updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE carts (
    crt_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    crt_usr_id UUID, -- รองรับ guest
    crt_status VARCHAR(20) DEFAULT 'ACTIVE',
    crt_created_at TIMESTAMP DEFAULT NOW(),
    crt_updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE cart_items (
    cit_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    cit_crt_id UUID NOT NULL REFERENCES carts(crt_id) ON DELETE CASCADE,
    cit_mnu_id UUID NOT NULL REFERENCES menus(mnu_id),
    cit_quantity INT NOT NULL CHECK (cit_quantity > 0),
    cit_price_at_time NUMERIC(10,2) NOT NULL,
    cit_created_at TIMESTAMP DEFAULT NOW(),
    cit_updated_at TIMESTAMP DEFAULT NOW(),
    UNIQUE (cit_crt_id, cit_mnu_id)
);

CREATE TABLE orders (
    ord_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    ord_crt_id UUID UNIQUE REFERENCES carts(crt_id),
    ord_no VARCHAR(30) UNIQUE NOT NULL,
    ord_total_amount NUMERIC(12,2) NOT NULL,
    ord_status VARCHAR(20) DEFAULT 'PENDING',
    ord_created_at TIMESTAMP DEFAULT NOW(),
    ord_updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE order_items (
    oit_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    oit_ord_id UUID NOT NULL REFERENCES orders(ord_id) ON DELETE CASCADE,
    oit_mnu_id UUID NOT NULL REFERENCES menus(mnu_id),
    oit_mnu_name VARCHAR(150) NOT NULL,
    oit_quantity INT NOT NULL,
    oit_price NUMERIC(10,2) NOT NULL,
    oit_subtotal NUMERIC(12,2)
        GENERATED ALWAYS AS (oit_quantity * oit_price) STORED
);

---------------------------------[ VIEW ]---------------------------------

CREATE VIEW v_cart_summary AS
SELECT
    c.crt_id,
    COUNT(ci.cit_id) AS total_items,
    SUM(ci.cit_quantity) AS total_quantity,
    COALESCE(SUM(ci.cit_quantity * ci.cit_price_at_time), 0) AS total_price
FROM carts c
LEFT JOIN cart_items ci ON ci.cit_crt_id = c.crt_id
WHERE c.crt_status = 'ACTIVE'
GROUP BY c.crt_id;

CREATE VIEW v_order_summary AS
SELECT
    o.ord_id,
    o.ord_no,
    o.ord_status,
    o.ord_total_amount,
    COUNT(oi.oit_id) AS total_items,
    SUM(oi.oit_quantity) AS total_quantity,
    o.ord_created_at
FROM orders o
JOIN order_items oi ON oi.oit_ord_id = o.ord_id
GROUP BY o.ord_id;
