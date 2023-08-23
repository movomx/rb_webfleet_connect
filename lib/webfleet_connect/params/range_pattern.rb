require_relative 'param'

module WebfleetConnect::Params
  class RangePattern < Param
    def initialize(value)
      @value = format(value)
    end

    private

    VALID_OPTIONS = {
      today:                    'd0',
      yesterday:                'd-1',
      two_days_ago:             'd-2',
      three_days_ago:           'd-3',
      four_days_ago:            'd-4',
      five_days_ago:            'd-5',
      six_days_ago:             'd-6',
      current_week:             'w0',
      last_week:                'w-1',
      two_weeks_ago:            'w-2',
      three_weeks_ago:          'w-3',
      floating_week:            'wf0',
      last_floating_week:       'wf-1',
      two_floating_weeks_ago:   'wf-2',
      three_floating_weeks_ago: 'wf-3',
      current_month:            'm0',
      last_month:               'm-1',
      two_months_ago:           'm-2',
      three_months_ago:         'm-3',
      user_defined_range:       'ud',
      ud:                       'ud'
    }

    def format(value)
      VALID_OPTIONS[value.to_sym] || value
    end
  end
end
