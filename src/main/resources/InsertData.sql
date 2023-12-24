use webcloud;

INSERT INTO users (address, avatar, cover, created_at, e_wallet, email, first_name, hashed_password, id_card, is_email_active, is_phone_active, last_name, phone, point, roles, salt, slug, updated_at) VALUES
    ('123 Main St', 'user1_avatar.jpg', 'user1_cover.jpg', '2023-11-24 08:00:00', 100.0, 'user1@example.com', 'John', 'hashed_password_1', '123456789', 1, 1, 'Doe', '1234567890', 50, 'ROLE_USER', 'user_salt_1', 'john-doe', '2023-11-24 08:00:00'),
    ('456 Oak St', 'user2_avatar.jpg', 'user2_cover.jpg', '2023-11-24 09:30:00', 150.0, 'user2@example.com', 'Jane', 'hashed_password_2', '987654321', 1, 1, 'Doe', '9876543210', 75, 'ROLE_USER', 'user_salt_2', 'jane-doe', '2023-11-24 09:30:00')
    -- Add more user records as needed
    ;

-- Sample Data for a Table with Columns: _id, cost, created_at, description, is_deleted, name, updated_at

INSERT INTO commission (_id, cost, created_at, description, is_deleted, name, updated_at) VALUES
    (1, 29.99, '2023-11-24 08:00:00', 'Product 1 description', 0, 'Product 1', '2023-11-24 08:00:00'),
    (2, 49.99, '2023-11-24 09:30:00', 'Product 2 description', 0, 'Product 2', '2023-11-24 09:30:00'),
    (3, 79.99, '2023-11-24 10:45:00', 'Product 3 description', 0, 'Product 3', '2023-11-24 10:45:00'),
    (4, 99.99, '2023-11-24 12:15:00', 'Product 4 description', 0, 'Product 4', '2023-11-24 12:15:00'),
    (5, 129.99, '2023-11-24 14:00:00', 'Product 5 description', 0, 'Product 5', '2023-11-24 14:00:00');

-- Add more rows as needed


-- Sample Stores data
INSERT INTO stores (avatar, bio, cover, created_at, e_wallet, featured_images, is_active, is_open, name, point, rating, slug, updated_at, commission_id, owner_id) VALUES
    ('store1_avatar.jpg', 'Store 1 bio', 'store1_cover.jpg', '2023-11-24 10:45:00', 200.0, NULL, 1, 1, 'Store 1', 100, NULL, 'store-1', '2023-11-24 10:45:00', 1, 1),
    ('store2_avatar.jpg', 'Store 2 bio', 'store2_cover.jpg', '2023-11-24 12:15:00', 300.0, NULL, 1, 1, 'Store 2', 150, NULL, 'store-2', '2023-11-24 12:15:00', 2, 2)
    -- Add more store records as needed
    ;

-- Sample Cart data
INSERT INTO carts (created_at, updated_at, store_id, user_id) VALUES
    ('2023-11-24 14:00:00', '2023-11-24 14:00:00', 1, 1),
    ('2023-11-24 15:30:00', '2023-11-24 15:30:00', 2, 2)
    -- Add more cart records as needed
    ;
    
    -- Sample Data for the 'category' Table with Columns: _id, created_at, image, is_deleted, name, slug, updated_at

INSERT INTO category (_id, created_at, image, is_deleted, name, slug, updated_at) VALUES
    (1, '2023-11-24 08:00:00', 'category_image_1.jpg', 0, 'Category 1', 'category-1', '2023-11-24 08:00:00'),
    (2, '2023-11-24 09:30:00', 'category_image_2.jpg', 0, 'Category 2', 'category-2', '2023-11-24 09:30:00'),
    (3, '2023-11-24 10:45:00', 'category_image_3.jpg', 0, 'Category 3', 'category-3', '2023-11-24 10:45:00'),
    (4, '2023-11-24 12:15:00', 'category_image_4.jpg', 0, 'Category 4', 'category-4', '2023-11-24 12:15:00'),
    (5, '2023-11-24 14:00:00', 'category_image_5.jpg', 0, 'Category 5', 'category-5', '2023-11-24 14:00:00');

-- Add more rows as needed

INSERT INTO product (_id, created_at, description, is_active, is_selling, list_images, name, price, promotional_price, quantity, rating, slug, sold, updated_at, category_id, store_id) VALUES
    (1, '2023-11-24 08:00:00', 'High-performance running shoes for all terrains.', 1, 1, null, 'Running Shoes 1', 99.99, 79.99, 50, 4, 'running-shoes-1', 200, '2023-11-24 08:00:00', 1, 1),
    (2, '2023-11-24 09:30:00', 'Casual sneakers with stylish design.', 1, 1, null, 'Sneakers 1', 59.99, 49.99, 100, 5, 'sneakers-1', 150, '2023-11-24 09:30:00', 2, 2),
    (3, '2023-11-24 10:45:00', 'Comfortable sandals for summer.', 1, 1, null, 'Summer Sandals 1', 39.99, 34.99, 75, 4, 'summer-sandals-1', 120, '2023-11-24 10:45:00', 3, 1),
    (4, '2023-11-24 12:15:00', 'Classic leather dress shoes for formal occasions.', 1, 1, null, 'Dress Shoes 1', 79.99, 69.99, 30, 4, 'dress-shoes-1', 80, '2023-11-24 12:15:00', 4, 2),
    (5, '2023-11-24 14:00:00', 'Athletic shoes with ankle support for sports.', 1, 1, null, 'Sports Shoes 1', 119.99, 99.99, 40, 5, 'sports-shoes-1', 100, '2023-11-24 14:00:00', 1, 2);

-- Sample Data for the 'delivery' Table with Columns: _id, created_at, description, is_deleted, name, price, updated_at

INSERT INTO delivery (_id, created_at, description, is_deleted, name, price, updated_at) VALUES
    (1, '2023-11-24 08:00:00', 'Standard delivery with estimated delivery time of 3-5 business days.', 0, 'Standard Delivery', 5, '2023-11-24 08:00:00'),
    (2, '2023-11-24 09:30:00', 'Express delivery with guaranteed next-day delivery.', 0, 'Express Delivery', 15, '2023-11-24 09:30:00'),
    (3, '2023-11-24 10:45:00', 'Free shipping on orders over $50.', 0, 'Free Shipping', 0, '2023-11-24 10:45:00'),
    (4, '2023-11-24 12:15:00', 'Special delivery for oversized items with additional handling fees.', 0, 'Oversized Delivery', 20, '2023-11-24 12:15:00'),
    (5, '2023-11-24 14:00:00', 'Same-day delivery for eligible products within a specific area.', 0, 'Same-Day Delivery', 25, '2023-11-24 14:00:00');

-- Add more rows as needed

