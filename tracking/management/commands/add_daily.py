from django.core.management.base import BaseCommand
from tracking.models import Transaction
from authenticating.models import User

class Command(BaseCommand):
    def handle(self, *args, **options):
        Transaction.objects.bulk_transact_rate_total(User.objects.all())
