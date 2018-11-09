class WaresListsController < ApplicationController

  def all_wares
    @all_wares = Ware.all
  end

  def picks
    @picks = Ware.where(phase: "Pick")
  end

  def groups
    @groups = Ware.where(phase: "Group")
  end

  def waits
    @waits = Ware.where(phase: "Wait")
  end

  def references
    @references = Ware.where(phase: "Reference")
  end

end
