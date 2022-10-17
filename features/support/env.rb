# require 'report_builder'
#
# # Ex 1:
# ReportBuilder.configure do |config|
#   config.input_path = 'results/cucumber_json'
#   config.report_path = 'my_test_report'
#   config.report_types = [:retry, :html]
#   config.report_title = 'My Test Results'
#   config.additional_info = {browser: 'Chrome', environment: 'Stage 5'}
# end
#
# ReportBuilder.build_report