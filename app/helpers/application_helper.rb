module ApplicationHelper
  def full_title(s)
    # converts title to "The Magic of Deduction | s" or just the first part if s is empty
    base = "The Magic of Deduction"

    if s.blank?
      return base
    else
      return "#{base} | #{s}"
    end
  end
end
