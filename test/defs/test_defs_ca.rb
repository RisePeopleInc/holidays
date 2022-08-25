# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: definitions/ca.yaml, definitions/north_america_informal.yaml
class CaDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_ca
{
  Date.civil(2008, 1, 1) => 'New Year\'s Day',
  Date.civil(2021, 1, 1) => 'New Year\'s Day',
  Date.civil(2022, 1, 1) => 'New Year\'s Day',
  Date.civil(2023, 1, 1) => 'New Year\'s Day',
  Date.civil(2008, 3, 21) => 'Good Friday',
  Date.civil(2021, 4, 2) => 'Good Friday',
  Date.civil(2022, 4, 15) => 'Good Friday',
  Date.civil(2023, 4, 7) => 'Good Friday',
  Date.civil(2008, 7, 1) => 'Canada Day',
  Date.civil(2021, 7, 1) => 'Canada Day',
  Date.civil(2022, 7, 1) => 'Canada Day',
  Date.civil(2023, 7, 1) => 'Canada Day',
  Date.civil(2008, 9, 1) => 'Labour Day',
  Date.civil(2021, 9, 6) => 'Labour Day',
  Date.civil(2022, 9, 5) => 'Labour Day',
  Date.civil(2023, 9, 4) => 'Labour Day',
  Date.civil(2008, 10, 13) => 'Thanksgiving',
  Date.civil(2021, 10, 11) => 'Thanksgiving',
  Date.civil(2022, 10, 10) => 'Thanksgiving',
  Date.civil(2023, 10, 9) => 'Thanksgiving',
  Date.civil(2008, 12, 25) => 'Christmas Day',
  Date.civil(2021, 12, 25) => 'Christmas Day',
  Date.civil(2022, 12, 25) => 'Christmas Day',
  Date.civil(2023, 12, 25) => 'Christmas Day'
 }.each do |date, name|
  assert_equal name, (Holidays.on(date, :ca)[0] || {})[:name]
end

# Bank Holiday in Quebec
[
  Date.civil(2021, 1, 2),
  Date.civil(2022, 1, 2),
  Date.civil(2023, 1, 2),
  Date.civil(2024, 1, 2)
].each do |date|
  assert_equal 'Bank Holiday', Holidays.on(date, :ca_qc)[0][:name]
end

# Heritage Day in Yukon
[
  Date.civil(2021, 2, 26),
  Date.civil(2022, 2, 25),
  Date.civil(2023, 2, 24),
  Date.civil(2024, 2, 23)
].each do |date|
  assert_equal 'Heritage Day', Holidays.on(date, :ca_yt)[0][:name]
end

# Discovery Day in Newfoundland and Labrador
[
  Date.civil(2021, 6, 21),
  Date.civil(2022, 6, 27),
  Date.civil(2023, 6, 26),
  Date.civil(2024, 6, 24)
].each do |date|
  assert_equal 'Discovery Day', Holidays.on(date, :ca_nl)[0][:name]
end

# Family Day in Alberta - Should only be active on 1990 or later
[
    Date.civil(1990, 2, 19),
  Date.civil(2013, 2, 18),
  Date.civil(2014, 2, 17),
  Date.civil(2023, 2, 20),
  Date.civil(2044, 2, 15)
].each do |date|
  assert_equal 'Family Day', Holidays.on(date, :ca_ab)[0][:name]
end

# Family Day in Alberta - should not be active before 1990
[
  Date.civil(1970,2,16),
  Date.civil(1988,2,15),
  Date.civil(1989,2,20)
].each do |date|
  assert_equal [], Holidays.on(date, :ca_ab)
end

# Family Day in Saskatchewan - Should only be active on 2007 or later
[
  Date.civil(2007,2,19),
  Date.civil(2013,2,18),
  Date.civil(2014,2,17),
  Date.civil(2022,2,21),
  Date.civil(2023,2,20),
  Date.civil(2044,2,15)
].each do |date|
  assert_equal 'Family Day', Holidays.on(date, :ca_sk)[0][:name]
end

# Family Day in Saskatchewan - should not be active before 2007
[
  Date.civil(1970,2,16),
  Date.civil(1988,2,15),
  Date.civil(1989,2,20),
  Date.civil(2006,2,20)
].each do |date|
  assert_equal [], Holidays.on(date, :ca_sk)
end

# Family Day in Ontario - Should only be active on 2008 or later
[
  Date.civil(2008,2,18),
  Date.civil(2013,2,18),
  Date.civil(2014,2,17),
  Date.civil(2044,2,15),
  Date.civil(2022,2,21),
  Date.civil(2023,2,20)
].each do |date|
  assert_equal 'Family Day', Holidays.on(date, :ca_on)[0][:name]
end

# Family Day in Ontario - should not be active before 2008
[
  Date.civil(1970,2,16),
  Date.civil(1988,2,15),
  Date.civil(1989,2,20),
  Date.civil(2006,2,20),
  Date.civil(2007,2,19)
].each do |date|
  assert_equal [], Holidays.on(date, :ca_on)
end

# Family Day in BC - Should only be active on 2013 to 2018
[
  Date.civil(2013,2,11),
  Date.civil(2014,2,10)
].each do |date|
  assert_equal 'Family Day', Holidays.on(date, :ca_bc)[0][:name]
end


# Family Day in BC - Should only be active on 2019 or later
[
  Date.civil(2022,2,21),
  Date.civil(2023,2,20),
  Date.civil(2044,2,15)
].each do |date|
  assert_equal 'Family Day', Holidays.on(date, :ca_bc)[0][:name]
end

# Family Day in BC - should not be active before 2013
[
  Date.civil(2000,2,14),
  Date.civil(2011,2,14),
  Date.civil(2012,2,13)
].each do |date|
  assert_equal [], Holidays.on(date, :ca_bc)
end

# Nova Scotia Heritage Day - should only be active on 2015 and later
[
  Date.civil(2015,2,16),
  Date.civil(2016,2,15),
  Date.civil(2017,2,20),
  Date.civil(2022,2,21),
  Date.civil(2023,2,20),
  Date.civil(2044,2,15)
].each do |date|
  assert_equal 'Nova Scotia Heritage Day', Holidays.on(date, :ca_ns)[0][:name]
end

# Nova Scotia Heritage Day - should not be active before 2015
[
  Date.civil(2000,2,21),
  Date.civil(2012,2,20),
  Date.civil(2013,2,18),
  Date.civil(2014,2,17)
].each do |date|
  assert_equal [], Holidays.on(date, :ca_ns)
end

# Manitoba Louis Riel Day
[
  Date.civil(2022,2,21),
  Date.civil(2023,2,20)
].each do |date|
  assert_equal 'Louis Riel Day', Holidays.on(date, :ca_mb)[0][:name]
end

# Islander Day in PE
[
  Date.civil(2013,2,18),
  Date.civil(2014,2,17),
  Date.civil(2022,2,21),
  Date.civil(2023,2,20)
].each do |date|
  assert_equal 'Islander Day', Holidays.on(date, :ca_pe)[0][:name]
end

# National Aboriginal Day in NT
[
  Date.civil(2022,6,21),
  Date.civil(2023,6,21)
].each do |date|
  assert_equal 'National Aboriginal Day', Holidays.on(date, :ca_nt)[0][:name]
end

# Fête Nationale in QC
[
  Date.civil(2022,6,24),
  Date.civil(2023,6,24)
].each do |date|
  assert_equal 'Fête Nationale', Holidays.on(date, :ca_qc)[0][:name]
end

# Nunavut Day in NU
[
  Date.civil(2022,7,9),
  Date.civil(2023,7,9)
].each do |date|
  assert_equal 'Nunavut Day', Holidays.on(date, :ca_nu)[0][:name]
end

# Discovery Day in Yukon
[
  Date.civil(2022, 8, 15),
  Date.civil(2023, 8, 21)
].each do |date|
  assert_equal 'Discovery Day', Holidays.on(date, [:ca_yk, :ca_yt])[0][:name]
end

# Victoria Day in all Canadian provinces
# except (QC)
%i[
  ca_ab
  ca_sk
  ca_on
  ca_bc
  ca_mb
  ca_ns
  ca_pe
  ca_yt
  ca_nt
  ca_nl
  ca_nu
  ca_nb
  ca_yk
].each do |province|
  assert_equal "Victoria Day", Holidays.on(Date.civil(2008, 5, 19) , province)[0][:name]
  assert_equal "Victoria Day", Holidays.on(Date.civil(2021, 5, 24) , province)[0][:name]
  assert_equal "Victoria Day", Holidays.on(Date.civil(2023, 5, 22) , province)[0][:name]
end

# First Monday in August
[
  Date.civil(2013,8,5),
  Date.civil(2014,8,4),
  Date.civil(2015,8,3),
  Date.civil(2022,8,1),
  Date.civil(2023,8,7)
].each do |date|
  { ca_bc: 'BC Day',
      ca_sk: 'Saskatchewan Day',
      ca_nt: 'Civic Holiday',
      ca_nu: 'Civic Holiday',
      ca_pe: 'Civic Holiday',
      ca_ns: 'Civic Holiday',
      ca_mb: 'Civic Holiday',
      ca_ab: 'Civic Holiday',
      ca_nb: 'New Brunswick Day' }.each do |region, name|
    assert_equal name, Holidays.on(date, region)[0][:name]
  end
end

# Remembrance Day in all Canadian provinces
# except (QC, NS, MB, ON)
%i[
  ca_ab
  ca_sk
  ca_bc
  ca_pe
  ca_nl
  ca_nt
  ca_nu
  ca_nb
  ca_yk
  ca_yt
].each do |province|
  assert_equal "Remembrance Day", Holidays.on(Date.civil(2016,11,11), province)[0][:name]
end

assert_equal "Boxing Day", Holidays.on(Date.civil(2008, 12, 26), :ca_on)[0][:name]

{Date.civil(2022,1,1) => 'New Year\'s Day',
 Date.civil(2022,4,15) => 'Good Friday',
 Date.civil(2022,5,23) => 'Victoria Day',
 Date.civil(2022,7,1) => 'Canada Day',
 Date.civil(2022,9,30) => 'Truth and Reconciliation Day',
 Date.civil(2022,10,10) => 'Thanksgiving',
 Date.civil(2022,11,11) => 'Remembrance Day',
 Date.civil(2022,12,25) => 'Christmas Day',
 Date.civil(2022,12,26) => 'Boxing Day'}.each do |date, name|
  assert_equal name, Holidays.on(date, :ca_bank_holidays)[0][:name]
end

assert_equal "Truth and Reconciliation Day", Date.civil(2023,9,29).holidays(:ca_bank_holidays, :observed)[0][:name]
assert_equal "Truth and Reconciliation Day", Date.civil(2023,9,30).holidays(:ca_bank_holidays)[0][:name]


{Date.civil(2013,2,2) => 'Groundhog Day',
 Date.civil(2013,2,14) => 'Valentine\'s Day',
 Date.civil(2013,3,17) => 'St. Patrick\'s Day',
 Date.civil(2013,4,1) => 'April Fool\'s Day',
 Date.civil(2013,4,22) => 'Earth Day',
 Date.civil(2013,5,12) => 'Mother\'s Day',
 Date.civil(2013,5,18) => 'Armed Forces Day',
 Date.civil(2013,6,16) => 'Father\'s Day',
 Date.civil(2013,10,31) => 'Halloween'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :us, :informal)[0] || {})[:name]
end

  end
end
