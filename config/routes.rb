










Rails.application.routes.draw do
	

	root to: "sessions#new"
	
	#
	get "password", to: "passwords#edit", as: :edit_password
	patch "password", to: "passwords#update"

	get "sign_up", to: "registrations#new"
	post "sign_up", to: "registrations#create"

	get "sign_in", to: "sessions#new"
	post "sign_in", to: "sessions#create"

	delete "logout", to: "sessions#destroy"

	get "password/reset", to: "password_resets#new"
	post "password/reset", to: "password_resets#create"



	#
	resources :users



	get "user", to: "users#index"
	delete "user", to: "users#delete", as: :user_delete

	#get "admin", to: "admins#edit", as: :admin_edit
	#patch "admin", to: "admins#update"
	#post "admin", to: "admins#create"

	

	get "dashboard", to: "main#index"

	#
	get "business/snapshot", to: "business#index"
	get "business/sales", to: "business#sales"
	get "business/invoices", to: "business#invoices"
	get "business/inventory", to: "business#inventory"
	get "business/expenses", to: "business#expenses"
	get "business/purchases", to: "business#purchases"

	#
	#get "bank_accounts"
	#get "assets"
	#get "reports"
	#get "account_transaction"
	#get "balance_sheet"
	#get "profit_loss"

	#
	#get "payroll"
	#get "employee"
		#get "pay_employee"
		#get "leave"
	#get "timesheets"

	#
	#get "customer"
	#get "supplier"

	#
	#get "create_invoice"
	#get "create_bill"
	#get "create_contact"
	#get "create_purchase_order"

	get "about-us", to: "about#index", as: :about









end
