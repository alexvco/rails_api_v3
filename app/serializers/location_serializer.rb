class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :this_is_my_virtual_attribute

  has_many :recordings

  def this_is_my_virtual_attribute
    {
      temp: 1,
      status: "sunny",
      esh: "gov"
    }
  end


  # output curl http://localhost:3000/api/v1/locations/   #this output is the active_model_serializer version


  # [
  #     {
  #         "id": 2,
  #         "name": "New York City",
  #         "recordings": [
  #             {
  #                 "created_at": "2017-11-20T00:02:20.860Z",
  #                 "id": 1,
  #                 "location_id": 2,
  #                 "status": "cloudy",
  #                 "temp": 32,
  #                 "updated_at": "2017-11-20T00:02:20.860Z"
  #             },
  #             {
  #                 "created_at": "2017-11-20T00:02:20.877Z",
  #                 "id": 2,
  #                 "location_id": 2,
  #                 "status": "rainy",
  #                 "temp": 28,
  #                 "updated_at": "2017-11-20T00:02:20.877Z"
  #             },
  #             {
  #                 "created_at": "2017-11-20T00:02:20.894Z",
  #                 "id": 3,
  #                 "location_id": 2,
  #                 "status": "sunny",
  #                 "temp": 30,
  #                 "updated_at": "2017-11-20T00:02:20.894Z"
  #             }
  #         ],
  #         "this_is_my_virtual_attribute": {
  #             "esh": "gov",
  #             "status": "sunny",
  #             "temp": 1
  #         }
  #     },
  #     {
  #         "id": 3,
  #         "name": "FLL",
  #         "recordings": [
  #             {
  #                 "created_at": "2017-11-20T00:16:23.090Z",
  #                 "id": 6,
  #                 "location_id": 3,
  #                 "status": "sunny",
  #                 "temp": 24,
  #                 "updated_at": "2017-11-20T00:16:23.090Z"
  #             },
  #             {
  #                 "created_at": "2017-11-20T00:18:00.342Z",
  #                 "id": 7,
  #                 "location_id": 3,
  #                 "status": "cloudy",
  #                 "temp": 26,
  #                 "updated_at": "2017-11-20T00:18:00.342Z"
  #             },
  #             {
  #                 "created_at": "2017-11-20T00:18:00.349Z",
  #                 "id": 8,
  #                 "location_id": 3,
  #                 "status": "rainy",
  #                 "temp": 28,
  #                 "updated_at": "2017-11-20T00:18:00.349Z"
  #             }
  #         ],
  #         "this_is_my_virtual_attribute": {
  #             "esh": "gov",
  #             "status": "sunny",
  #             "temp": 1
  #         }
  #     }
  # ]





  # by only changing the config/initializers/ams.rb file to use json_api as the adapter for active model serializer we now get the following

  # output curl http://localhost:3000/api/v1/locations/   #this output is the json_api version



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
  #                             "created-at": "2017-11-20T00:02:20.860Z",
  #                             "id": 1,
  #                             "location-id": 2,
  #                             "status": "cloudy",
  #                             "temp": 32,
  #                             "updated-at": "2017-11-20T00:02:20.860Z"
  #                         },
  #                         {
  #                             "created-at": "2017-11-20T00:02:20.877Z",
  #                             "id": 2,
  #                             "location-id": 2,
  #                             "status": "rainy",
  #                             "temp": 28,
  #                             "updated-at": "2017-11-20T00:02:20.877Z"
  #                         },
  #                         {
  #                             "created-at": "2017-11-20T00:02:20.883Z",
  #                             "id": 3,
  #                             "location-id": 2,
  #                             "status": "sunny",
  #                             "temp": 22,
  #                             "updated-at": "2017-11-20T00:02:20.883Z"
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
  #                             "created-at": "2017-11-20T00:16:23.090Z",
  #                             "id": 6,
  #                             "location-id": 3,
  #                             "status": "sunny",
  #                             "temp": 24,
  #                             "updated-at": "2017-11-20T00:16:23.090Z"
  #                         },
  #                         {
  #                             "created-at": "2017-11-20T00:18:00.342Z",
  #                             "id": 7,
  #                             "location-id": 3,
  #                             "status": "cloudy",
  #                             "temp": 26,
  #                             "updated-at": "2017-11-20T00:18:00.342Z"
  #                         },
  #                         {
  #                             "created-at": "2017-11-20T00:18:00.349Z",
  #                             "id": 8,
  #                             "location-id": 3,
  #                             "status": "rainy",
  #                             "temp": 28,
  #                             "updated-at": "2017-11-20T00:18:00.349Z"
  #                         }
  #                     ]
  #                 }
  #             },
  #             "type": "locations"
  #         }
  #     ]
  # }



end
