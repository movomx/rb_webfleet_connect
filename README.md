# WebfleetConnect

![Webfleet logo](https://login.webfleet.com/auth/resources/7k8j7/login/product_webfleet/img/logo.svg)

#

Gem to consume WEBFLEET.connect API.

[![Gem Version](https://badge.fury.io/rb/webfleet_connect.svg)](https://badge.fury.io/rb/webfleet_connect)

The WEBFLEET.connect API connects software appli­ca­tions with the Webfleet fleet management solution. Via WEBFLEET.connect you can enhance the value of all types of business solutions, including routing and scheduling optimization, ERP, Transport Management System (TMS), supply chain planning, asset management, and much more.

Check also the version for:

- [javascript](https://github.com/movomx/webfleet_connect_js)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'webfleet_connect'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install webfleet_connect

## Usage

```ruby
require 'webfleet_connect'

webfleet_connect = WebfleetConnect.create
response = webfleet_connect.show_object_report_extern
response.to_hash # [{:objectno=>"858EU4", :objectname=>"YRT-MMD2439", :objectclassname=>"sales", ...
```

`WebfleetConnect.create` returns a new `WebfleetConnect::Session` object which has the capabilities to request info from the WEBFLEET.connect API.

The Webfleet credential are taken from the env variables `WEBFLEET_CONNECT_ACCOUNT`, `WEBFLEET_CONNECT_USERNAME`, `WEBFLEET_CONNECT_PASSWORD` and `WEBFLEET_CONNECT_APIKEY` (if you want to know more about env variables check [this link](https://www.honeybadger.io/blog/ruby-guide-environment-variables/)).

If your system needs to work with multiple accounts or you need to specify the credentials dynamically for some other reason, you can do it this way:

```ruby
webfleet_connect = WebfleetConnect.create(account: 'companyName', username: 'dev', password: 'VLm5PpiZST6U', apikey: 'ZSksD88s-F7Uf')
```

When you use one of the methods of this gem, like for example `show_vehicle_report_extern`, this returns a `WebfleetConnect::Response` object which you can do:

```ruby
response = webfleet_connect.show_vehicle_report_extern

response.url         # gets the url to fetch the informtion from WEBFLEET.connect
response.status_code # gets the status code of the request
response.to_s        # returns the response message as plain text as is returned by WEBFLEET.connect
response.to_hash     # returns the data as a ruby Array/Hash object
```

The methods available in this gem are the same that are documented in the [WEBFLEET.connect docs page](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html) just changed from cammelCase to snake_case. See below the list of methods.

### Params

In order to add params to a request is as easy as passing a hash of options in the request like:

```ruby
response = webfleet_connect.show_vehicle_report_extern(filterstring: 'ECO', objectgroupname: 'Vehiculos', ungroupedonly: true)
```

The `rangefrom_string` and `rangeto_string` can accept `Time` objects:

```ruby
start_date = Time.now
end_date   = start_date + (60 * 60 * 24)

response = webfleet_connect.show_event_report_extern(range_pattern: :ud, rangefrom_string: start_date, rangeto_string: end_date)
```

The `range_pattern` can accept the values
`:today`,
`:yesterday`,
`:two_days_ago`,
`:three_days_ago`,
`:four_days_ago`,
`:five_days_ago`,
`:six_days_ago`,
`:current_week`,
`:last_week`,
`:two_weeks_ago`,
`:three_weeks_ago`,
`:floating_week`,
`:last_floating_week`,
`:two_floating_weeks_ago`,
`:three_floating_weeks_ago`,
`:current_month`,
`:last_month`,
`:two_months_ago`,
`:three_months_ago`,
`:user_defined_range` and
`:ud`


```ruby
response = webfleet_connect.show_event_report_extern(range_pattern: :today)
```

### Extra config

The `WebfleetConnect::Session` object works with the default configuration:

`lang: :en, format: :csv, useUTF8: false, useISO8601: false`

but you can change the default configuration when you create the object:

```ruby
credentials = {
  account: 'companyName',
  username: 'dev',
  password: 'VLm5PpiZST6U',
  apikey: 'ZSksD88s-F7Uf'
}

config = {
  lang: :de,
  format: :json,
  useUTF8: true
}

params = credentials.merge config

webfleet_connect = WebfleetConnect.create(params)
```

### Methods list

Mesage queues:

- *Not implemented yet*

Objects:

- [show_object_report_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showobjectreportextern.html)
- [show_vehicle_report_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showvehiclereportextern.html)
- [show_nearest_vehicles](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/shownearestvehicles.html)
- [show_contracts](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showcontracts.html)
- [update_vehicle](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updatevehicle.html)
- [show_object_groups](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showobjectgroups.html)
- [show_object_group_objects](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showobjectgroupobjects.html)
- [attach_object_to_group](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/attachobjecttogroup.html)
- [detach_object_from_group](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/detachobjectfromgroup.html)
- [insert_object_group](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/insertobjectgroup.html)
- [delete_object_group](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/deleteobjectgroup.html)
- [update_object_group](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updateobjectgroup.html)
- [switch_output](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/switchoutput.html)
- [show_wakeup_timers](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showwakeuptimers.html)
- [update_wakeup_timers](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updatewakeuptimers.html)
- [get_object_features](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/getobjectfeatures.html)
- [update_contract_info](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updatecontractinfo.html)
- [get_object_can_signals](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/getobjectcansignals.html)
- [get_object_can_malfunctions](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/getobjectcanmalfunctions.html)
- [get_electric_vehicle_data](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/getelectricvehicledata.html)
- [get_active_asset_couplings](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/getactiveassetcouplings.html)

Orders:

- [send_order_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/sendorderextern.html)
- [send_destination_order_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/senddestinationorderextern.html)
- [update_order_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updateorderextern.html)
- [update_destination_order_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updatedestinationorderextern.html)
- [insert_destination_order_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/insertdestinationorderextern.html)
- [cancel_order_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/cancelorderextern.html)
- [assign_order_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/assignorderextern.html)
- [reassign_order_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/reassignorderextern.html)
- [delete_order_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/deleteorderextern.html)
- [clear_orders_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/clearordersextern.html)
- [show_order_report_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showorderreportextern.html)
- [show_order_waypoints](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showorderwaypoints.html)

Messages:

- [send_text_message_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/sendtextmessageextern.html)
- [clear_text_messages_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/cleartextmessagesextern.html)
- [show_messages](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showmessages.html)
- [send_binary_message](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/sendbinarymessage.html)
- [reset_binary_messages](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/resetbinarymessages.html)
- [clear_binary_messages](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/clearbinarymessages.html)

Drivers:

- [show_driver_report_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showdriverreportextern.html)
- [insert_driver_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/insertdriverextern.html)
- [update_driver_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updatedriverextern.html)
- [delete_driver_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/deletedriverextern.html)
- [show_opti_drive_indicator](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showoptidriveindicator.html)
- [show_driver_groups](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showdrivergroups.html)
- [show_driver_group_drivers](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showdrivergroupdrivers.html)
- [attach_driver_to_group](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/attachdrivertogroup.html)
- [detach_driver_from_group](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/detachdriverfromgroup.html)
- [insert_driver_group](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/insertdrivergroup.html)
- [delete_driver_group](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/deletedrivergroup.html)
- [update_driver_group](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updatedrivergroup.html)
- [attach_driver_to_vehicle](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/attachdrivertovehicle.html)
- [detach_driver_from_vehicle](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/detachdriverfromvehicle.html)
- [get_driver_rdt_rules](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/getdriverrdtrules.html)
- [update_driver_rdt_rules](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updatedriverrdtrules.html)

Addresses:

- [show_address_report_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showaddressreportextern.html)
- [show_address_group_report_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showaddressgroupreportextern.html)
- [show_address_group_address_report_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showaddressgroupaddressreporte.html)
- [insert_address_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/insertaddressextern.html)
- [updateAddressExtern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updateaddressextern.html)
- [delete_address_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/deleteaddressextern.html)
- [attach_address_to_group_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/attachaddresstogroupextern.html)
- [detach_address_from_group_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/detachaddressfromgroupextern.html)
- [insert_address_group_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/insertaddressgroupextern.html)
- [delete_address_group_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/deleteaddressgroupextern.html)

Events:

- [show_event_report_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showeventreportextern.html)
- [acknowledge_event_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/acknowledgeeventextern.html)
- [resolve_event_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/resolveeventextern.html)
- [get_event_forward_configs](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/geteventforwardconfigs.html)
- [get_event_forward_config_recipients](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/geteventforwardconfigrecipient.html)
- [insert_event_forward_config](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/inserteventforwardconfig.html)
- [update_event_forward_config](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updateeventforwardconfig.html)
- [delete_event_forward_config](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/deleteeventforwardconfig.html)

Trips and working times:

- [show_trip_report_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showtripreportextern.html)
- [show_trip_summary_report_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showtripsummaryreportextern.html)
- [show_tracks](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showtracks.html)
- [update_logbook](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updatelogbook.html)
- [show_logbook](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showlogbook.html)
- [show_logbook_history](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showlogbookhistory.html)
- [update_logbook_mode](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updatelogbookmode.html)
- [update_logbook_driver](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/updatelogbookdriver.html)
- [show_working_times](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showworkingtimes.html)
- [show_stand_stills](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showstandstills.html)
- [show_idle_exceptions](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showidleexceptions.html)
- [get_object_kpis](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/getobjectkpis.html)
- [get_driver_kpis](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/getdriverkpis.html)
- [get_remaining_driving_times_eu](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/getremainingdrivingtimeseu.html)

Miscellaneous reports:

- [get_charger_connections](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/getchargerconnections.html)
- [show_io_report_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showioreportextern.html)
- [show_acceleration_events](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showaccelerationevents.html)
- [show_speeding_events](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showspeedingevents.html)
- [show_digital_input_state_mileage](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/showdigitalinputstatemileage.html)
- [get_charger_connections](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/getchargerconnections.html)

Geocoding and routing:

- [geocode_address](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/geocodeaddress.html)
- [calc_route_simple_extern](https://www.webfleet.com/static/help/webfleet-connect/en_gb/index.html#data/calcroutesimpleextern.html)

Configuration and security:

- *Not implemented yet*

User management:

- *Not implemented yet*

Vehicle maintenance:

- *Not implemented yet*

Reporting:

- *Not implemented yet*

Areas:

- *Not implemented yet*

LINK.connect:

- *Not implemented yet*

Plugins:

- *Not implemented yet*
