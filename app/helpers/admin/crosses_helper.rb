module Admin::CrossesHelper
  def start_form_column(record, options)
    datetime_select :record, :start
  end
end
