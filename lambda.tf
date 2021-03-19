
resource "aws_lambda_function" "lambda_process_cadabra_orders" {
  #filename      = "lambda_write_to_dynamodb.zip" (use this when using source_code_hash, source_code_hash is a local .zipfile name where the lambda code resides)
  function_name = "ProcessOrders_03152021_20"
  role          = aws_iam_role.iam_for_lambda.arn
  #handler = python script file name . entry point function name
  handler       = "lambda_write_to_dynamodb.lambda_handler"

  # The filebase64sha256() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the base64sha256() function and the file() function:
  # source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"
  # source_code_hash = filebase64sha256("lambda_write_to_dynamodb.zip")
  s3_bucket = "cadabraorders-code-vgopu"
  s3_key = "lambda_write_to_dynamodb.zip"
  
  runtime = "python3.7"
}