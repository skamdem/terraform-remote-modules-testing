provider "aws" {
  region = var.region
}

module "work_queue" {
  source     = "git@github.com:skamdem/sqs-with-backoff.git"
  queue_name = "work-queue"
}

output "work_queue" {
  value = module.work_queue.queue
}

output "work_queue_dead_letter_queue" {
  value = module.work_queue.dead_letter_queue
}