# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  def order_confirmation
    contact = {
          "email"=>"tranminhan.my@gmail.com",
          "phone"=>"+84949005732",
          "address"=>"15/18/31 Nguyen Ngoc Loc\r\nWard 14, District 10"
        }
    order = {
      "shipping"=> "20000",
      "total"=> "90000",
      "items" => [
          {
            "id"=>12,
            "name"=>"Ca kho to",
            "description"=>"Pariatur fuga totam impedit ea aut sint. Quia ducimus reiciendis libero sunt non quos. Debitis doloremque quae atque omnis qui corporis qui.",
            "price"=>"50000.0",
            "section"=>"Dinner",
            "image_url"=>"http://toinayangi.vn/wp-content/uploads/2014/08/ca-kho-to.gif",
            "created_at"=>"2015-12-05T14:13:12.082Z",
            "updated_at"=>"2015-12-05T14:13:12.082Z"
          },
          {
            "id"=>17,
            "name"=>"Pepsi",
            "description"=>"Aperiam aut doloribus. Laboriosam et rerum. Magni tenetur cum nihil accusantium. Similique assumenda est molestiae illo quia eligendi.",
            "price"=>"20000.0",
            "section"=>"Drink",
            "image_url"=>"http://www.bmstores.co.uk/images/hpcProductImage/imgFull/2059-Pepsi-330ml-Can.jpg",
            "created_at"=>"2015-12-05T14:13:12.090Z",
            "updated_at"=>"2015-12-05T14:13:12.090Z"
          },
        ]
      }
    OrderMailer.order_confirmation(contact, order)
  end
end
