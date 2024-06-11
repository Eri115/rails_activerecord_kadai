class ExercisesController < ApplicationController
  def exercise1
    # 【要件】注文されていないすべての料理を返すこと
    #   * left_outer_joinsを使うこと
    @foods = Food.left_outer_joins(:orders).where(orders: {id: nil })

  end

  def exercise2
    # 【要件】注文されていない料理を提供しているすべてのお店を返すこと
    #   * left_outer_joinsを使うこと
  
    @shops = Shop.left_outer_joins(:order_foods).where(orders: {id: order_foods})
    @shops.each.do |shop|
      puts shop.name
    #　料理とお店を結合する
    #　注文されていない料理を提供してる全てのお店を探す
  end

  def exercise3 
    # 【要件】配達先の一番多い住所を返すこと
    #   * joinsを使うこと
    #   * 取得したAddressのインスタンスにorders_countと呼びかけると注文の数を返すこと
    @address = address.joins(:orders).group("city").
    #Customer.orders_count(:)
  end

  def exercise4 
    # 【要件】一番お金を使っている顧客を返すこと
    #   * joinsを使うこと
    #   * 取得したCustomerのインスタンスにfoods_price_sumと呼びかけると合計金額を返すこと
    #@customer = Customer.joins(:)
  end
end
