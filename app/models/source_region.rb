require "archived_concern"

class SourceRegion < ApplicationRecord
  include ArchivedConcern

  belongs_to :tenant
  belongs_to :source
  belongs_to :refresh_state_part, :optional => true

  has_many :ipaddresses
  has_many :network_adapters
  has_many :networks
  has_many :orchestration_stacks
  has_many :security_groups
  has_many :service_instances
  has_many :service_offerings
  has_many :service_plans
  has_many :subnets
  has_many :vms
  has_many :reservations
  has_many :volumes

  acts_as_tenant(:tenant)
end
