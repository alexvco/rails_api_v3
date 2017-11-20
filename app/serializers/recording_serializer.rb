class RecordingSerializer < ActiveModel::Serializer
  attributes :id, :temp, :status

  belongs_to :location


  # so now when you curl http://localhost:3000/api/v1/locations/ 

  #   {
  #     "data": [
  #         {
  #             "attributes": {
  #                 "name": "New York City",
  #                 "this-is-my-virtual-attribute": {
  #                     "esh": "gov",
  #                     "status": "sunny",
  #                     "temp": 1
  #                 }
  #             },
  #             "id": "2",
  #             "relationships": {
  #                 "recordings": {
  #                     "data": [
  #                         {
  #                             "id": "1",
  #                             "type": "recordings"
  #                         },
  #                         {
  #                             "id": "2",
  #                             "type": "recordings"
  #                         },
  #                         {
  #                             "id": "3",
  #                             "type": "recordings"
  #                         }
  #                     ]
  #                 }
  #             },
  #             "type": "locations"
  #         },
  #         {
  #             "attributes": {
  #                 "name": "FLL",
  #                 "this-is-my-virtual-attribute": {
  #                     "esh": "gov",
  #                     "status": "sunny",
  #                     "temp": 1
  #                 }
  #             },
  #             "id": "3",
  #             "relationships": {
  #                 "recordings": {
  #                     "data": [
  #                         {
  #                             "id": "6",
  #                             "type": "recordings"
  #                         },
  #                         {
  #                             "id": "7",
  #                             "type": "recordings"
  #                         },
  #                         {
  #                             "id": "8",
  #                             "type": "recordings"
  #                         }
  #                     ]
  #                 }
  #             },
  #             "type": "locations"
  #         }
  #     ]
  # }






  # With include in locations_controller.rb

  # {
  #     "data": [
  #         {
  #             "attributes": {
  #                 "name": "New York City",
  #                 "this-is-my-virtual-attribute": {
  #                     "esh": "gov",
  #                     "status": "sunny",
  #                     "temp": 1
  #                 }
  #             },
  #             "id": "2",
  #             "relationships": {
  #                 "recordings": {
  #                     "data": [
  #                         {
  #                             "id": "1",
  #                             "type": "recordings"
  #                         },
  #                         {
  #                             "id": "2",
  #                             "type": "recordings"
  #                         },
  #                         {
  #                             "id": "3",
  #                             "type": "recordings"
  #                         },
  #                         {
  #                             "id": "4",
  #                             "type": "recordings"
  #                         },
  #                         {
  #                             "id": "5",
  #                             "type": "recordings"
  #                         }
  #                     ]
  #                 }
  #             },
  #             "type": "locations"
  #         },
  #         {
  #             "attributes": {
  #                 "name": "FLL",
  #                 "this-is-my-virtual-attribute": {
  #                     "esh": "gov",
  #                     "status": "sunny",
  #                     "temp": 1
  #                 }
  #             },
  #             "id": "3",
  #             "relationships": {
  #                 "recordings": {
  #                     "data": [
  #                         {
  #                             "id": "6",
  #                             "type": "recordings"
  #                         },
  #                         {
  #                             "id": "7",
  #                             "type": "recordings"
  #                         },
  #                         {
  #                             "id": "8",
  #                             "type": "recordings"
  #                         }
  #                     ]
  #                 }
  #             },
  #             "type": "locations"
  #         }
  #     ],
  #     "included": [
  #         {
  #             "attributes": {
  #                 "status": "cloudy",
  #                 "temp": 32
  #             },
  #             "id": "1",
  #             "relationships": {
  #                 "location": {
  #                     "data": {
  #                         "id": "2",
  #                         "type": "locations"
  #                     }
  #                 }
  #             },
  #             "type": "recordings"
  #         },
  #         {
  #             "attributes": {
  #                 "status": "rainy",
  #                 "temp": 28
  #             },
  #             "id": "2",
  #             "relationships": {
  #                 "location": {
  #                     "data": {
  #                         "id": "2",
  #                         "type": "locations"
  #                     }
  #                 }
  #             },
  #             "type": "recordings"
  #         },
  #         {
  #             "attributes": {
  #                 "status": "sunny",
  #                 "temp": 22
  #             },
  #             "id": "3",
  #             "relationships": {
  #                 "location": {
  #                     "data": {
  #                         "id": "2",
  #                         "type": "locations"
  #                     }
  #                 }
  #             },
  #             "type": "recordings"
  #         },
  #         {
  #             "attributes": {
  #                 "status": "cloudy",
  #                 "temp": 34
  #             },
  #             "id": "4",
  #             "relationships": {
  #                 "location": {
  #                     "data": {
  #                         "id": "2",
  #                         "type": "locations"
  #                     }
  #                 }
  #             },
  #             "type": "recordings"
  #         },
  #         {
  #             "attributes": {
  #                 "status": "sunny",
  #                 "temp": 30
  #             },
  #             "id": "5",
  #             "relationships": {
  #                 "location": {
  #                     "data": {
  #                         "id": "2",
  #                         "type": "locations"
  #                     }
  #                 }
  #             },
  #             "type": "recordings"
  #         },
  #         {
  #             "attributes": {
  #                 "status": "sunny",
  #                 "temp": 24
  #             },
  #             "id": "6",
  #             "relationships": {
  #                 "location": {
  #                     "data": {
  #                         "id": "3",
  #                         "type": "locations"
  #                     }
  #                 }
  #             },
  #             "type": "recordings"
  #         },
  #         {
  #             "attributes": {
  #                 "status": "cloudy",
  #                 "temp": 26
  #             },
  #             "id": "7",
  #             "relationships": {
  #                 "location": {
  #                     "data": {
  #                         "id": "3",
  #                         "type": "locations"
  #                     }
  #                 }
  #             },
  #             "type": "recordings"
  #         },
  #         {
  #             "attributes": {
  #                 "status": "rainy",
  #                 "temp": 28
  #             },
  #             "id": "8",
  #             "relationships": {
  #                 "location": {
  #                     "data": {
  #                         "id": "3",
  #                         "type": "locations"
  #                     }
  #                 }
  #             },
  #             "type": "recordings"
  #         }
  #     ]
  # }


end