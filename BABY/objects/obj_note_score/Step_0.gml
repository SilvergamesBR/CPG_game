y -= 1;

alpha = max(0, alpha - (1 / lifetime));

lifetime -= 1;

image_alpha = alpha;

if (lifetime <= 0) {
    instance_destroy();
}