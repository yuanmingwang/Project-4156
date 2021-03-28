Rails.configuration.stripe = {
#   :publishable_key => ENV['PUBLISHABLE_KEY'],
#   :secret_key      => ENV['SECRET_KEY']
    
    :publishable_key =>  'pk_test_51IZrWxJbRCNasIAFBAX1mulyLpVqNsEQA9FWRVCb3Z2WY3aJzDLyO7y616QL37ZIMAZ2z7EqUurwkwHKGqAmdRu900LHM4wFYg',
    :secret_key     =>  'sk_test_51IZrWxJbRCNasIAFduE3GHMhBnfMBFy2cwPaQ5VkLoZjSeMvbCxXboh2IBRnhsK0uDtkmBlPzpbJyuEUtqttAxRS003NFupUj3'
    
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]