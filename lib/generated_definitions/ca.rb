# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: definitions/ca.yaml, definitions/north_america_informal.yaml
  #
  # To use the definitions in this file, load it right after you load the
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'generated_definitions/ca'
  #
  # All the definitions are available at https://github.com/holidays/holidays
  module CA # :nodoc:
    def self.defined_regions
      [:ca, :ca_qc, :ca_ab, :ca_sk, :ca_on, :ca_bc, :ca_mb, :ca_ns, :ca_pe, :ca_yt, :ca_nt, :ca_nl, :ca_nu, :ca_nb, :ca_yk, :us]
    end

    def self.holidays_by_month
      {
              0 => [{:function => "easter(year)", :function_arguments => [:year], :function_modifier => -2, :name => "Good Friday", :regions => [:ca]}],
      1 => [{:mday => 1, :name => "New Year's Day", :regions => [:ca]},
            {:mday => 2, :name => "Bank Holiday", :regions => [:ca_qc]}],
      2 => [{:wday => 1, :week => 3,  :year_ranges => [{:after => 1990}],:name => "Family Day", :regions => [:ca_ab]},
            {:wday => 1, :week => 3,  :year_ranges => [{:after => 2007}],:name => "Family Day", :regions => [:ca_sk]},
            {:wday => 1, :week => 3,  :year_ranges => [{:after => 2008}],:name => "Family Day", :regions => [:ca_on]},
            {:wday => 1, :week => 2,  :year_ranges => [{:between => 2013..2018}],:name => "Family Day", :regions => [:ca_bc]},
            {:wday => 1, :week => 3,  :year_ranges => [{:after => 2019}],:name => "Family Day", :regions => [:ca_bc]},
            {:wday => 1, :week => 3, :name => "Louis Riel Day", :regions => [:ca_mb]},
            {:wday => 1, :week => 3,  :year_ranges => [{:after => 2015}],:name => "Nova Scotia Heritage Day", :regions => [:ca_ns]},
            {:wday => 1, :week => 3, :name => "Islander Day", :regions => [:ca_pe]},
            {:wday => 5, :week => 4, :name => "Heritage Day", :regions => [:ca_yt]},
            {:mday => 2, :type => :informal, :name => "Groundhog Day", :regions => [:us, :ca]},
            {:mday => 14, :type => :informal, :name => "Valentine's Day", :regions => [:us, :ca]}],
      5 => [{:function => "ca_victoria_day(year)", :function_arguments => [:year], :name => "Victoria Day", :regions => [:ca]},
            {:function => "ca_victoria_day(year)", :function_arguments => [:year], :name => "National Patriotes Day", :regions => [:ca_qc]},
            {:wday => 0, :week => 2, :type => :informal, :name => "Mother's Day", :regions => [:us, :ca]},
            {:wday => 6, :week => 3, :type => :informal, :name => "Armed Forces Day", :regions => [:us]}],
      6 => [{:mday => 24, :observed => "to_monday_if_sunday(date)", :observed_arguments => [:date], :name => "Fête Nationale", :regions => [:ca_qc]},
            {:mday => 21, :name => "National Aboriginal Day", :regions => [:ca_nt]},
            {:function => "ca_nl_discovery_day(year)", :function_arguments => [:year], :name => "Discovery Day", :regions => [:ca_nl]},
            {:wday => 0, :week => 3, :type => :informal, :name => "Father's Day", :regions => [:us, :ca]}],
      7 => [{:mday => 1, :observed => "to_monday_if_sunday(date)", :observed_arguments => [:date], :name => "Canada Day", :regions => [:ca]},
            {:mday => 9, :name => "Nunavut Day", :regions => [:ca_nu]}],
      8 => [{:wday => 1, :week => 1, :name => "BC Day", :regions => [:ca_bc]},
            {:wday => 1, :week => 1, :name => "Saskatchewan Day", :regions => [:ca_sk]},
            {:wday => 1, :week => 1, :name => "Civic Holiday", :regions => [:ca_nt, :ca_nu, :ca_pe, :ca_ns, :ca_mb, :ca_ab]},
            {:wday => 1, :week => 1, :name => "New Brunswick Day", :regions => [:ca_nb]},
            {:wday => 1, :week => 3, :name => "Discovery Day", :regions => [:ca_yk, :ca_yt]}],
      9 => [{:wday => 1, :week => 1, :name => "Labour Day", :regions => [:ca]}],
      10 => [{:wday => 1, :week => 2, :name => "Thanksgiving", :regions => [:ca]},
            {:mday => 31, :type => :informal, :name => "Halloween", :regions => [:us, :ca]}],
      11 => [{:mday => 11, :name => "Remembrance Day", :regions => [:ca_ab, :ca_sk, :ca_bc, :ca_pe, :ca_nl, :ca_nt, :ca_nu, :ca_nb, :ca_yk, :ca_yt]}],
      12 => [{:mday => 25, :name => "Christmas Day", :regions => [:ca]},
            {:mday => 26, :name => "Boxing Day", :regions => [:ca_on]}],
      3 => [{:mday => 17, :type => :informal, :name => "St. Patrick's Day", :regions => [:us, :ca]}],
      4 => [{:mday => 1, :type => :informal, :name => "April Fool's Day", :regions => [:us, :ca]},
            {:mday => 22, :type => :informal, :name => "Earth Day", :regions => [:us, :ca]}]
      }
    end

    def self.custom_methods
      {
        "ca_victoria_day(year)" => Proc.new { |year|
date = Date.civil(year,5,24)
if date.wday > 1
  date -= (date.wday - 1)
elsif date.wday == 0
  date -= 6
end
date
},

"ca_nl_discovery_day(year)" => Proc.new { |year|
date = Date.civil(year,6,24)
if date.wday <= 4
  date -= (date.wday - 1)
else
  date += (8 - date.wday)
end
date
},


      }
    end
  end
end
