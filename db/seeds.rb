# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# PRODUCT CATEGORY
ProductCat.destroy_all
productcat1 = ProductCat.create({:id=>100, :name=>"Tea", :typeProduct=>"drink", :description=>"testing..."})
productcat2 = ProductCat.create({:id=>102, :name=>"Milk Tea", :typeProduct=>"drink", :description=>"testing..."})
productcat3 = ProductCat.create({:id=>103, :name=>"Fresh Drink", :typeProduct=>"drink", :description=>"testing..."})

# PRODUCT DETAIL
ProductDetail.destroy_all
product1 = ProductDetail.create({:id=>100, :name=>"toocha 01", :description => "testing...", :details => "testing...", :price=>10000, :discount=>0, :product_cat_id=>100})
product1 = ProductDetail.create({:id=>101, :name=>"toocha 02", :description => "testing...", :details => "testing...", :price=>12000, :discount=>0, :product_cat_id=>100})
product1 = ProductDetail.create({:id=>102, :name=>"toocha 03", :description => "testing...", :details => "testing...", :price=>14000, :discount=>0, :product_cat_id=>102})
product1 = ProductDetail.create({:id=>103, :name=>"toocha 04", :description => "testing...", :details => "testing...", :price=>16000, :discount=>0, :product_cat_id=>102})
product1 = ProductDetail.create({:id=>104, :name=>"toocha 05", :description => "testing...", :details => "testing...", :price=>20000, :discount=>0, :product_cat_id=>102})

# PRODUCT IMAGES
ProductImage.destroy_all
img1 = ProductImage.create({:id=>100, :product_detail_id=>100, :product_type => "product_detail", :url_img => "1.jpg"})
img2 = ProductImage.create({:id=>101, :product_detail_id=>101, :product_type => "product_detail", :url_img => "2.jpg"})
img3 = ProductImage.create({:id=>102, :product_detail_id=>102, :product_type => "product_detail", :url_img => "3.jpg"})
img4 = ProductImage.create({:id=>103, :product_detail_id=>103, :product_type => "product_detail", :url_img => "4.jpg"})
img5 = ProductImage.create({:id=>104, :product_detail_id=>104, :product_type => "product_detail", :url_img => "5.jpg"})
