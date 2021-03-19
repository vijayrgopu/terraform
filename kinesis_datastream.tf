
resource "aws_kinesis_stream" "kinesis_cadabra_orders" {
  name             = "CadabraOrders_"
  shard_count      = 1
  retention_period = 24

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

  tags = {
    exercise = "mlacademy"
  }
}
