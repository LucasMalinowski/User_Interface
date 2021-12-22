module ApplicationHelper
  def num_to_phone(num)
    "(#{ num[0..1] })-#{ num[2..6] }-#{ num[7..-1] }"
  end
end
