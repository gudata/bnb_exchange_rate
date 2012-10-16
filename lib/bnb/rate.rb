class Bnb::Rate
  attr_accessor :gold, :name, :code, :ratio, :rate, :extra_info, :f_star

  def from_bnb params
    @gold = params['GOLD']
    @name = params['NAME_']
    @code = params['CODE']
    @ratio = params['RATIO']
    @rate = params['RATE']
    @extra_info = params['EXTRAINFO']
    @f_star = params['F_STAR']
    self
  end

end
