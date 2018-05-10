class CardsController < ApplicationController
  def index
    length = 6
    @txn_id= (SecureRandom.random_number * (10**length)).round.to_s
    @order=Card.new
  end

  def show
      @order = Card.find(params[:id])
    render :layout => false



  end

  def success

    @txn_details=TxnDetail.find_by_txnid(params[:txnid])
    @amount=@txn_details.amount

  end

  def new
    @order = Card.new

  end

  def edit
    @order = Card.find(params[:id])

  end



  def create
    @contributor=Card.new(card_params)
    length = 6
    @id= (SecureRandom.random_number * (10**length)).round.to_s

    @contributor.txnid=@id
     @contributor.save
     redirect_to card_path(@contributor.id)

  end

  def update
    @order = Card.find(params[:id])
  end

  def destroy
    @order = Card.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  def payu_return

    TxnDetail.create!(txnid: params[:txnid],
                      amount: params[:net_amount_debit],
                      name: params[:firstname],
                      email: params[:email],
                      pay_id: params[:mihpayid],
                      status: params[:status],
                      mode: params[:mode]
                      )
    notification = PayuIndia::Notification.new(request.query_string, options = {:key => 'pwQIna', :salt => 'ysoX9Uqh', :params => params})
    if(params[:status] == "success")
    redirect_to success_path(params[:txnid])
    else
    redirect_to root_path
    end
  end

  private
 def card_params
   params.require(:card ).permit(:name,:email,:phone_no,:amount,:txnid)
 end
end
