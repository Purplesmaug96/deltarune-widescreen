camerax_set(raw_camerax() + panx);
cameray_set(raw_cameray() + pany);
pantimer += 1;
if (pantimer >= panmax)
{
    instance_destroy();
}
