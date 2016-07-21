defmodule GoodsManage.Order do
  use GoodsManage.Web, :model

  schema "orders" do
    field :customer, :string                       #客户名称
    field :sales_department, :string               #销售部门
    field :customer_address, :string               #客户地址
    field :telephone, :string                      #住宅电话
    field :phone, :string                          #联系电话
    field :perchase_date, :integer                 #购货日期
    field :customer_demand, :string                #客户需求
    field :goods_name, :string                     #商品名称
    field :receive_num, :integer                   #收货数量
    field :receive_date, :integer                  #收获日期
    field :install_date, :integer                  #安装日期
    field :order_no, :string                       #提货单号
    field :dispatching_date_local, :integer        #网点派工日期
    field :dispatching_date_service, :integer      #客服派工日期

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:customer, :sales_department, :customer_address, :telephone, :phone, :perchase_date, :customer_demand, :goods_name, :receive_num, :receive_date, :install_date, :order_no, :dispatching_date_local, :dispatching_date_service])
    |> validate_required([:customer, :sales_department, :customer_address, :telephone, :phone, :perchase_date, :customer_demand, :goods_name, :receive_num, :receive_date, :install_date, :order_no, :dispatching_date_local, :dispatching_date_service])
  end
end
