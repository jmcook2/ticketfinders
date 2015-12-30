class AdminController < ApplicationController

  layout "admin"

  http_basic_authenticate_with name: "testing", password: "testing"

end
