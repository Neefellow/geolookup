# encoding: UTF-8
module Geolookup
  module USA
    module State
      ###################################################################
      # self.code_to_name
      #
      # Given a state code output full state name.  Else return nil
      #
      def self.code_to_name(state_code)
        STATE_CODE_TO_FULL[state_code.to_s.to_i]
      end

      ###################################################################
      # self.code_to_state_abbreviation
      #
      # Given a state code output the state abbreviation.  Else return nil
      #
      def self.code_to_abbreviation(state_code)
        CODE_TO_STATE[state_code.to_s.to_i]
      end

      ###################################################################
      # self.name_to_abbreviation
      #
      # Given a state name OR abbreviation return a code.  It takes both an abbreviation and
      # a state full name
      #
      def self.name_to_abbreviation(state_abbrev)
        code_to_name(abbreviation_to_code(state_abbrev))
      end

      ###################################################################
      # self.state_name_to_code
      #
      # Given a state name OR abbreviation return a code.  It takes both an abbreviation and
      # a state full name
      #
      def self.name_to_code(state_name)
        STATE_NAME_TO_CODE[state_name.to_s.upcase]
      end

      ###################################################################
      # self.state_abbreviation_to_full_name
      #
      # Given a state abbreviation return the full state name
      #
      def self.abbreviation_to_name(state_abbrev)
        FULL_STATE_NAMES[state_abbrev.to_s.upcase]
      end

      ###################################################################
      # self.name_to_lat_long
      #
      # Given a state name return the lat and long
      #
      def self.name_to_lat_long(name)
        code_to_lat_long(name_to_code(name.to_s.upcase))
      end

      ###################################################################
      # self.code_to_lat_long
      #
      # Given a code return the lat and long
      #
      def self.code_to_lat_long(state_code)
        STATE_LAT_LONG[state_code.to_s.to_i]
      end

      ###################################################################
      # self.abbreviations
      #
      # Returns an array of state abbreviations
      #
      def self.abbreviations
        CODE_TO_STATE.values
      end


      ###################################################################
      # self.names
      #
      # Returns an array of state names
      #
      def self.names
        STATE_CODE_TO_FULL.values
      end

      ###################################################################
      # self.codes
      #
      # Returns an array of state names
      #
      def self.codes
        STATE_CODE_TO_FULL.keys
      end

      class << self
        alias :abbreviation_to_code :name_to_code
        alias :abbreviation_to_lat_long :name_to_lat_long
      end

      STATE_LAT_LONG = {
        1  => [ 32318231,  -86602298],
        2  => [ 63588753, -154493062],
        4  => [ 34048928, -111093731],
        5  => [ 35201050,  -91831833],
        6  => [ 36778261, -119417932],
        8  => [ 39550050, -105782067],
        9  => [ 41603221,  -73087749],
        10 => [ 38910832,  -75527670],
        11 => [ 38905985,  -77033418],
        12 => [ 27664827,  -81515754],
        13 => [ 31557435,  -83407123],
        15 => [ 19898682, -155665857],
        16 => [ 44068202, -114742041],
        17 => [ 40633125,  -89398528],
        18 => [ 40551217,  -85602364],
        19 => [ 41878003,  -93097702],
        20 => [ 39011902,  -98484247],
        21 => [ 37839333,  -84270018],
        22 => [ 31244823,  -92145025],
        23 => [ 45253783,  -69445469],
        24 => [ 39645755,  -77641271],
        25 => [ 42407211,  -71382437],
        26 => [ 44314844,  -85602364],
        27 => [ 46729553,  -94685900],
        28 => [ 32354668,  -89398528],
        29 => [ 37964253,  -91831833],
        30 => [ 46879682, -110362566],
        31 => [ 41492537,  -99901813],
        32 => [ 38802610, -116419389],
        33 => [ 43193852,  -71572395],
        34 => [ 40858324,  -74505661],
        35 => [ 34972731, -105032364],
        36 => [ 43014269,  -75605973],
        37 => [ 35359573,  -78419300],
        38 => [ 47551493, -101002012],
        39 => [ 40417287,  -82907123],
        40 => [ 35007752,  -97092877],
        41 => [ 43804133, -120554201],
        42 => [ 41203322,  -79494525],
        44 => [ 41580095,  -71477429],
        45 => [ 33536081,  -80863725],
        46 => [ 44269515,  -99901813],
        47 => [ 35517491,  -86580447],
        48 => [ 31968599,  -99901813],
        49 => [ 39320980, -111093731],
        50 => [ 44558803,  -72577841],
        51 => [ 37431573,  -78656894],
        53 => [ 47495398, -120939249],
        54 => [ 38297626,  -80994903],
        55 => [ 43784440,  -88787868],
        56 => [ 43075968, -107290284],
        60 => [-14270972, -170132217],
        66 => [ 13444304,  144793731],
        69 => [ 17330830,  145384690],
        72 => [ 18220833,  -66590149],
        78 => [ 18335765,  -64896335]
      }


    STATE_CODE_TO_FULL = {
      1  => "Alabama",
      2  => "Alaska",
      4  => "Arizona",
      5  => "Arkansas",
      6  => "California",
      8  => "Colorado",
      9  => "Connecticut",
      10 => "Delaware",
      11 => "District of Columbia",
      12 => "Florida",
      13 => "Georgia",
      15 => "Hawaii",
      16 => "Idaho",
      17 => "Illinois",
      18 => "Indiana",
      19 => "Iowa",
      20 => "Kansas",
      21 => "Kentucky",
      22 => "Louisiana",
      23 => "Maine",
      24 => "Maryland",
      25 => "Massachusetts",
      26 => "Michigan",
      27 => "Minnesota",
      28 => "Mississippi",
      29 => "Missouri",
      30 => "Montana",
      31 => "Nebraska",
      32 => "Nevada",
      33 => "New Hampshire",
      34 => "New Jersey",
      35 => "New Mexico",
      36 => "New York",
      37 => "North Carolina",
      38 => "North Dakota",
      39 => "Ohio",
      40 => "Oklahoma",
      41 => "Oregon",
      42 => "Pennsylvania",
      44 => "Rhode Island",
      45 => "South Carolina",
      46 => "South Dakota",
      47 => "Tennessee",
      48 => "Texas",
      49 => "Utah",
      50 => "Vermont",
      51 => "Virginia",
      53 => "Washington",
      54 => "West Virginia",
      55 => "Wisconsin",
      56 => "Wyoming",
      60 => "American Somoa",
      66 => "Guam",
      69 => "Northern Mariana Islands",
      72 => "Puerto Rico",
      78 => "Virgin Islands"
    }

    CODE_TO_STATE = {
      1 => "AL",
      2 => "AK",
      4 => "AZ",
      5 => "AR",
      6 => "CA",
      8 => "CO",
      9 => "CT",
      10 => "DE",
      11 => "DC",
      12 => "FL",
      13 => "GA",
      15 => "HI",
      16 => "ID",
      17 => "IL",
      18 => "IN",
      19 => "IA",
      20 => "KS",
      21 => "KY",
      22 => "LA",
      23 => "ME",
      24 => "MD",
      25 => "MA",
      26 => "MI",
      27 => "MN",
      28 => "MS",
      29 => "MO",
      30 => "MT",
      31 => "NE",
      32 => "NV",
      33 => "NH",
      34 => "NJ",
      35 => "NM",
      36 => "NY",
      37 => "NC",
      38 => "ND",
      39 => "OH",
      40 => "OK",
      41 => "OR",
      42 => "PA",
      44 => "RI",
      45 => "SC",
      46 => "SD",
      47 => "TN",
      48 => "TX",
      49 => "UT",
      50 => "VT",
      51 => "VA",
      53 => "WA",
      54 => "WV",
      55 => "WI",
      56 => "WY",
      60 => "AS",
      66 => "GU",
      69 => "MP",
      72 => "PR",
      78 => "VI",
    }

    STATE_NAME_TO_CODE = {
      "AK" => 2,
      "ALASKA" => 2,
      "AL" => 1,
      "ALABAMA" => 1,
      "AR" => 5,
      "ARKANSAS" => 5,
      "AS" => 60,
      "AMERICAN SOMOA" => 60,
      "AZ" => 4,
      "ARIZONA" => 4,
      "CA" => 6,
      "CALIFORNIA" => 6,
      "CO" => 8,
      "COLORADO" => 8,
      "CT" => 9,
      "CONNECTICUT" => 9,
      "DC" => 11,
      "DISTRICT OF COLUMBIA" => 11,
      "DE" => 10,
      "DELAWARE" => 10,
      "FL" => 12,
      "FLORIDA" => 12,
      "GA" => 13,
      "GEORGIA" => 13,
      "GU" => 66,
      "GUAM" => 66,
      "HI" => 15,
      "HAWAII" => 15,
      "IA" => 19,
      "IOWA" => 19,
      "ID" => 16,
      "IDAHO" => 16,
      "IL" => 17,
      "ILLINOIS" => 17,
      "IN" => 18,
      "INDIANA" => 18,
      "KS" => 20,
      "KANSAS" => 20,
      "KY" => 21,
      "KENTUCKY" => 21,
      "LA" => 22,
      "LOUISIANA" => 22,
      "MA" => 25,
      "MASSACHUSETTS" => 25,
      "MD" => 24,
      "MARYLAND" => 24,
      "ME" => 23,
      "MAINE" => 23,
      "MI" => 26,
      "MICHIGAN" => 26,
      "MN" => 27,
      "MINNESOTA" => 27,
      "MO" => 29,
      "MISSOURI" => 29,
      "MP" => 69,
      "NORTHERN MARIANA ISLANDS" => 69,
      "MS" => 28,
      "MISSISSIPPI" => 28,
      "MT" => 30,
      "MONTANA" => 30,
      "NC" => 37,
      "NORTH CAROLINA" => 37,
      "ND" => 38,
      "NORTH DAKOTA" => 38,
      "NE" => 31,
      "NEBRASKA" => 31,
      "NH" => 33,
      "NEW HAMPSHIRE" => 33,
      "NJ" => 34,
      "NEW JERSEY" => 34,
      "NM" => 35,
      "NEW MEXICO" => 35,
      "NV" => 32,
      "NEVADA" => 32,
      "NY" => 36,
      "NEW YORK" => 36,
      "OH" => 39,
      "OHIO" => 39,
      "OK" => 40,
      "OKLAHOMA" => 40,
      "OR" => 41,
      "OREGON" => 41,
      "PA" => 42,
      "PENNSYLVANIA" => 42,
      "PR" => 72,
      "PUERTO RICO" => 72,
      "RI" => 44,
      "RHODE ISLAND" => 44,
      "SC" => 45,
      "SOUTH CAROLINA" => 45,
      "SD" => 46,
      "SOUTH DAKOTA" => 46,
      "TN" => 47,
      "TENNESSEE" => 47,
      "TX" => 48,
      "TEXAS" => 48,
      "UT" => 49,
      "UTAH" => 49,
      "VA" => 51,
      "VIRGINIA" => 51,
      "VI" => 78,
      "VIRGIN ISLANDS" => 78,
      "VT" => 50,
      "VERMONT" => 50,
      "WA" => 53,
      "WASHINGTON" => 53,
      "WI" => 55,
      "WISCONSIN" => 55,
      "WV" => 54,
      "WEST VIRGINIA" => 54,
      "WY" => 56,
      "WYOMING" => 56,
    }

    STATE_CODE_TO_DISPLAY_NAME = {
      1 => "Alabama",
      2 => "Alaska",
      4 => "Arizona",
      5 => "Arkansas",
      6 => "California",
      8 => "Colorado",
      9 => "Connecticut",
      10 => "Delaware",
      11 => "District of Columbia",
      12 => "Florida",
      13 => "Georgia",
      15 => "Hawaii",
      16 => "Idaho",
      17 => "Illinois",
      18 => "Indiana",
      19 => "Iowa",
      20 => "Kansas",
      21 => "Kentucky",
      22 => "Louisiana",
      23 => "Maine",
      24 => "Maryland",
      25 => "Massachusetts",
      26 => "Michigan",
      27 => "Minnesota",
      28 => "Mississippi",
      29 => "Missouri",
      30 => "Montana",
      31 => "Nebraska",
      32 => "Nevada",
      33 => "New Hampshire",
      34 => "New Jersey",
      35 => "New Mexico",
      36 => "New York",
      37 => "North Carolina",
      38 => "North Dakota",
      39 => "Ohio",
      40 => "Oklahoma",
      41 => "Oregon",
      42 => "Pennsylvania",
      44 => "Rhode Island",
      45 => "South Carolina",
      46 => "South Dakota",
      47 => "Tennessee",
      48 => "Texas",
      49 => "Utah",
      50 => "Vermont",
      51 => "Virginia",
      53 => "Washington",
      54 => "West Virginia",
      55 => "Wisconsin",
      56 => "Wyoming",
      60 => "American Somoa",
      66 => "Guam",
      69 => "Northern Mariana Islands",
      72 => "Puerto Rico",
      78 => "Virgin Islands",
    }

    FULL_STATE_NAMES = {
      "AK" => "Alaska",
      "AL" => "Alabama",
      "AR" => "Arkansas",
      "AS" => "American Somoa",
      "AZ" => "Arizona",
      "CA" => "California",
      "CO" => "Colorado",
      "CT" => "Connecticut",
      "DC" => "District of Columbia",
      "DE" => "Delaware",
      "FM" => "Federated States of Micronesia",
      "FL" => "Florida",
      "GA" => "Georgia",
      "GU" => "Guam",
      "HI" => "Hawaii",
      "IA" => "Iowa",
      "ID" => "Idaho",
      "IL" => "Illinois",
      "IN" => "Indiana",
      "KS" => "Kansas",
      "KY" => "Kentucky",
      "LA" => "Louisiana",
      "MA" => "Massachusetts",
      "MD" => "Maryland",
      "ME" => "Maine",
      "MI" => "Michigan",
      "MN" => "Minnesota",
      "MO" => "Missouri",
      "MP" => "Northern Mariana Islands",
      "MS" => "Mississippi",
      "MT" => "Montana",
      "NC" => "North Carolina",
      "ND" => "North Dakota",
      "NE" => "Nebraska",
      "NH" => "New Hampshire",
      "NJ" => "New Jersey",
      "NM" => "New Mexico",
      "NV" => "Nevada",
      "NY" => "New York",
      "OH" => "Ohio",
      "OK" => "Oklahoma",
      "OR" => "Oregon",
      "PA" => "Pennsylvania",
      "PR" => "Puerto Rico",
      "RI" => "Rhode Island",
      "SC" => "South Carolina",
      "SD" => "South Dakota",
      "TN" => "Tennessee",
      "TX" => "Texas",
      "UT" => "Utah",
      "VA" => "Virginia",
      "VI" => "Virgin Islands",
      "VT" => "Vermont",
      "WA" => "Washington",
      "WI" => "Wisconsin",
      "WV" => "West Virginia",
      "WY" => "Wyoming",
    }
    end
  end
end