ActiveAdmin.register Payment do
  filter :refernce
  filter :price
  filter :status
  filter :payment_method
  filter :created_at

  index do
    selectable_column
    id_column
    column :reference
    column :user
    column :price
    column :status
    column :payment_method
    column :created_at
  end

  show do
  end

  action_item :refund, only: :show do
    link_to("Refund Payment",
        refund_path(id: payment.id, type: Payment),
	method: "POST",
        class: "button",
	data: {confirm: "Are you sure you want refund this payment?"})
  end
end

