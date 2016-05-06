# coding: utf-8

require_relative 'spec_helper'

RSpec.describe 'Iyzipay' do
  before :all do
    @options = Iyzipay::Options.new
    @options.api_key = 'your api key'
    @options.secret_key = 'your secret key'
    @options.base_url = 'https://api.iyzipay.com'
  end

  it 'should post auth' do
    request = {
        locale: 'tr',
        conversationId: '123456789',
        paymentId: '252',
        paidPrice: '1',
        ip: '85.34.78.112',
    }
    payment = Iyzipay::Model::BasicPaymentPostAuth.new.create(request, @options)
    begin
      $stderr.puts payment.inspect
    rescue
      $stderr.puts 'oops'
      raise
    end
  end

  after :each do
  end
end