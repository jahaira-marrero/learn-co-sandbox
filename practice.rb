require 'pry'

makeup = [
    {
        brand: "Milk Makeup",
        type: "primer",
        rating: 5,
        longwear: true
    },
    {
        brand: "Tatcha",
        type: "primer",
        rating: 4,
        longwear: false
    },
    {
        brand: "Smashbox",
        type: "primer",
        rating: 3,
        longwear: true
    },
    {
        brand: "Benefit",
        type: "primer",
        rating: 3,
        longwear: false
    }
]

# def instructors
#     [
#         {
#             brand: "Annie Z",
#             type: "Coach",
#             rating: 2,
#             longwear: false
#         },
#         {
#             brand: "Sylwia V",
#             type: "Lead",
#             rating: 1,
#             longwear: true
#         },
#         {
#             brand: "Isabel L",
#             type: "Coach",
#             rating: 0,
#             longwear: true
#         },
#         {
#             brand: "Eric K",
#             type: "Lead",
#             rating: 4,
#             longwear: false
#         }
#     ]
# end

def all_brands
    makeup.each do |brand|
        brand[:name]
        binding.pry
       end 
end


def brand_and_type
    instructors.map {|hash| {hash[:brand] => hash[:type]}}
   binding.pry
end

def all_coaches
    instructors.select { |instructor| instructor[:type] == "Coach"}
end

def all_leads
    instructors.select { |instructor| instructor[:type] == "Lead"}
end

def first_instructor_with_a_car
    instructors.find { |instructor| instructor[:longwear]}
end



def instructors_with_more_than_1_sibling
    instructors.select { |instructor| instructor[:rating] > 1}
end



def most_rating
    instructors.select.max { |instructor| instructor[:rating]}
end



def total_rating
    instructors.select.sum { |instructor| instructor[:rating]}
end



binding.pry
0