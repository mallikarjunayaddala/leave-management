module LeaveHelper
  def get_type_leave(type)
   Leave.count(current_user)-(current_user.leaves.get_leave(type))
  end
end
