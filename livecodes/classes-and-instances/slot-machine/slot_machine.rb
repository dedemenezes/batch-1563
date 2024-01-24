class SlotMachine
  ITEMS = ['cherry', 'seven', 'bell', 'star', 'joker']
  #   0       1          2       3       4       5        += 1
  def initialize(reels=[])
    @reels = reels # an Array of items
  end

  def play
    @reels = []
    3.times do
      @reels << ITEMS.sample
    end
    # show the reels
    return @reels
  end

  def score
    if @reels.uniq.size == 1 # Three of the same item
      # TODO: CALCULATE POINTS
      # read the item we have
      item = @reels[0]
      # get the item index from ITEMS
      base_point = ITEMS.index(item)
      # add one and multiple by 10
      (base_point + 1) * 10
    elsif @reels.uniq.size == 2 && @reels.include?('joker')
      item = @reels[0]
      base_point = ITEMS.index(item)
      ((base_point + 1) * 10) / 2
    else
      # three different items 0 points
      return 0
    end
  end
end

['joker', 'joker', 'star'].uniq
['joker', 'star']
['star', 'joker', 'joker'].uniq
['star', 'joker']
