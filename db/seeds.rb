# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# PRODUCT CATEGORY
ProductCat.destroy_all
productcat1 = ProductCat.create({:id=>1, :name=>"Tea", :typeProduct=>"drink", :description=>"testing..."})
productcat2 = ProductCat.create({:id=>2, :name=>"Milk Tea", :typeProduct=>"drink", :description=>"testing..."})
productcat3 = ProductCat.create({:id=>3, :name=>"Fresh Drink", :typeProduct=>"drink", :description=>"testing..."})

# PRODUCT DETAIL
ProductDetail.destroy_all
product1 = ProductDetail.create({:id=>1, :name=>"toocha 01", :description => "testing...", :details => "testing...", :price=>10000, :discount=>0, :product_cat_id=>1})
product1 = ProductDetail.create({:id=>2, :name=>"toocha 02", :description => "testing...", :details => "testing...", :price=>12000, :discount=>0, :product_cat_id=>1})
product1 = ProductDetail.create({:id=>3, :name=>"toocha 03", :description => "testing...", :details => "testing...", :price=>14000, :discount=>0, :product_cat_id=>2})
product1 = ProductDetail.create({:id=>4, :name=>"toocha 04", :description => "testing...", :details => "testing...", :price=>16000, :discount=>0, :product_cat_id=>2})
product1 = ProductDetail.create({:id=>5, :name=>"toocha 05", :description => "testing...", :details => "testing...", :price=>20000, :discount=>0, :product_cat_id=>2})

# PRODUCT IMAGES
ProductImage.destroy_all
img1 = ProductImage.create({:id=>1, :product_detail_id=>1, :product_type => "product_detail", :url_img => "1.jpg"})
img2 = ProductImage.create({:id=>2, :product_detail_id=>2, :product_type => "product_detail", :url_img => "2.jpg"})
img3 = ProductImage.create({:id=>3, :product_detail_id=>3, :product_type => "product_detail", :url_img => "3.jpg"})
img4 = ProductImage.create({:id=>4, :product_detail_id=>4, :product_type => "product_detail", :url_img => "4.jpg"})
img5 = ProductImage.create({:id=>5, :product_detail_id=>5, :product_type => "product_detail", :url_img => "5.jpg"})
