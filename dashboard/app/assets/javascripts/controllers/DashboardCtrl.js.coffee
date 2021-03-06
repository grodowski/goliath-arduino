@DashboardCtrl = ($scope, $http, $filter, $timeout, $location, sensor_service) ->
  $scope.sensors = sensor_service.data
    
  $scope.is_active = (sensor) -> 
    sensor_service.is_active(sensor)
  
  $scope.has_data = (sensor) -> 
    sensor_service.has_measurements(sensor)
  
  $scope.show_details = (sensor) ->
    console.log sensor
    $location.path '/details/' + sensor._id.$oid
  
  $scope.toggle_settings = (sensor) -> 
    sensor.settings_visible = if sensor.settings_visible then undefined else true
  
  sensor_service.fetch()

