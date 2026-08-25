# IBC modules

IBC client, channel, packet, and ICS-20 actions are outside the Bankd host
surface. Bankd owns deposits and withdrawals and invokes Shieldd through the
typed host boundary.

No IBC hop authorizes compliance changes or separates Bankd and Shieldd state
finality.
