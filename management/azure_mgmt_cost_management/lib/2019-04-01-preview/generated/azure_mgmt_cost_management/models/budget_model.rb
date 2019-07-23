# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_04_01_preview
  module Models
    #
    # A budget resource.
    #
    class BudgetModel < ProxyResource

      include MsRestAzure

      # @return [CategoryType] The category of the budget, whether the budget
      # tracks cost or usage. Possible values include: 'Cost', 'Usage'
      attr_accessor :category

      # @return The total amount of cost to track with the budget
      attr_accessor :amount

      # @return [TimeGrainType] The time covered by a budget. Tracking of the
      # amount will be reset based on the time grain. Possible values include:
      # 'Monthly', 'Quarterly', 'Annually'
      attr_accessor :time_grain

      # @return [BudgetTimePeriod] Has start and end date of the budget. The
      # start date must be first of the month and should be less than the end
      # date. Budget start date must be on or after June 1, 2017. Future start
      # date should not be more than three months. Past start date should  be
      # selected within the timegrain period. There are no restrictions on the
      # end date.
      attr_accessor :time_period

      # @return [ReportConfigFilter] May be used to filter budgets.
      attr_accessor :filter

      # @return [CurrentSpend] The current amount of cost which is being
      # tracked for a budget.
      attr_accessor :current_spend

      # @return [Hash{String => Notification}] Dictionary of notifications
      # associated with the budget. Budget can have up to five notifications.
      attr_accessor :notifications


      #
      # Mapper for BudgetModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BudgetModel',
          type: {
            name: 'Composite',
            class_name: 'BudgetModel',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              e_tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eTag',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.category',
                type: {
                  name: 'String'
                }
              },
              amount: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.amount',
                type: {
                  name: 'Number'
                }
              },
              time_grain: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.timeGrain',
                type: {
                  name: 'String'
                }
              },
              time_period: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.timePeriod',
                type: {
                  name: 'Composite',
                  class_name: 'BudgetTimePeriod'
                }
              },
              filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.filter',
                type: {
                  name: 'Composite',
                  class_name: 'ReportConfigFilter'
                }
              },
              current_spend: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.currentSpend',
                type: {
                  name: 'Composite',
                  class_name: 'CurrentSpend'
                }
              },
              notifications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.notifications',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NotificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Notification'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
