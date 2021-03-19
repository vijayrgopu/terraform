resource "aws_lambda_event_source_mapping" "example" {
  event_source_arn  = aws_kinesis_stream.kinesis_cadabra_orders.arn
  function_name     = aws_lambda_function.lambda_process_cadabra_orders.arn
  starting_position = "LATEST"
}