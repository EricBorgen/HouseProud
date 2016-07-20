require "administrate/base_dashboard"

class AddressDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    # id: Field::Number,
    country_ISO_code: Field::String.with_options(
      title: "Country Code"
    ),
    name_line: Field::String,
    first_name: Field::String,
    last_name: Field::String,
    org_name: Field::String,
    state_province_region: Field::String,
    county_district: Field::String,
    city_town: Field::String,
    postal_code: Field::String,
    street_address: Field::String,
    street_address_2: Field::String,
    street_address_3: Field::String,
    # created_at: Field::DateTime,
    # updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    # :id,
    # :country_ISO_code,
    :name_line,
    # :first_name,
    # :last_name,
    :org_name,
    # :county_district,
    :city_town,
    :state_province_region,
    :postal_code,
    # :street_address,
    # :street_address_2,
    # :street_address_3,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :country_ISO_code,
    :name_line,
    :first_name,
    :last_name,
    :org_name,
    :state_province_region,
    :county_district,
    :city_town,
    :postal_code,
    :street_address,
    :street_address_2,
    :street_address_3,
  ]

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
