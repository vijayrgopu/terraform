
resource "aws_kinesis_stream" "kinesis_cadabra_orders" {
  name             = "CadabraOrders_03152021_20"
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