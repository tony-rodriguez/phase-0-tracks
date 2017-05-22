train = {
  direction: "Northbound",
  final_stop: "Union Station",
  conductor_info: {
    name: "Steve Buscemi",
    years_experience: 22
    },
  car1: {
    car_info: {
      bicycle_spots_available: 2,
      bathroom: false,
      capacity: 35
    },
    passengers: {
      pass_1: {
        name: "Pete",
        belongings: ["breifcase", "travel mug"]
      },
      pass_2: {
        name: "Pam",
        belongings: ["backpack", "bicycle"]
      },
      pass_3: {
        name: "Paul",
        belongings: ["dog", "water bottle"]
      },
      pass_4: {
        name: "Penelope",
        belongings: ["suitcase", "backpack", "purse"]
      }
    },
  },
  car2: {
    car_info: {
      bicycle_spots_available: 3,
      bathroom: true,
      capacity: 40
    },
    passengers: {
      pass_1: {
        name: "Ben",
        belongings: ["stroller", "baby", "tote bag"]
      },
      pass_2: {
        name: "Britney",
        belongings: ["bicycle", "helmet"]
      },
      pass_3: {
        name: "Brandon",
        belongings: ["fish tank", "fish food"]
      }
    }
  },
  car3: {
    car_info: {
      bicycle_spots_available: 4,
      bathroom: false,
      capacity: 45
    },
    passengers: {
      pass_1: {
        name: "Garfield",
        belongings: ["lasagna"]
      },
      pass_2: {
        name: "Santa",
        belongings: ["gifts", "reindeer", "sleigh"]
      }
    }
  }
}

p train[:car2][:passengers][:pass_1][:belongings]

p train[:conductor_info][:years_experience]

p train[:car3][:car_info]

p train[:car1][:passengers][:pass_3][:belongings][1]

puts "#{train[:car3][:passengers][:pass_2][:name]} likes #{train[:car3][:passengers][:pass_1][:belongings][0]}."

p train[:car1][:passengers][:pass_3][:belongings][0] + train[:car2][:passengers][:pass_3][:belongings][1]