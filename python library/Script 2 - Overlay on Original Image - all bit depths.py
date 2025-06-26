import os
import numpy as np
from PIL import Image
from datetime import datetime
import matplotlib.pyplot as plt

# ======== USER CONFIGURATION ========
INPUT_FILE = r"C:\Users\dwaig\Downloads\t1-head-s-60.tif"  # ← Replace with your file path
BIT_DEPTHS = [1, 2, 4, 8, 16]
CROP_BOX = (150, 200, 150, 200)  # y1, y2, x1, x2 for overlay
PIXEL_SKIP = 1
FONT_SIZE = 2
OVERLAY_COLOR = 'red'
FONT_WEIGHT = 'bold'
FIGSIZE_PER_IMAGE = (4, 4)
# ====================================

# Load image
image = Image.open(INPUT_FILE).convert("I")
image_np = np.array(image)

# Crop region
y1, y2, x1, x2 = CROP_BOX
overlay_crop = image_np[y1:y2, x1:x2]

def simulate_bit_depth(img, bits):
    max_val = 2**bits - 1
    scaled = (img - img.min()) / (img.max() - img.min())
    quantized = np.round(scaled * max_val).astype(np.uint16)
    return (quantized / max_val * 255).astype(np.uint8)

# Create overlay images for all bit depths
fig, axs = plt.subplots(1, len(BIT_DEPTHS), figsize=(FIGSIZE_PER_IMAGE[0]*len(BIT_DEPTHS), FIGSIZE_PER_IMAGE[1]))
for ax, bits in zip(axs, BIT_DEPTHS):
    bit_img = simulate_bit_depth(image_np, bits)
    crop_for_display = bit_img[y1:y2, x1:x2]
    ax.imshow(crop_for_display, cmap='gray', vmin=0, vmax=255)
    for (i, j), val in np.ndenumerate(overlay_crop):
        if i % PIXEL_SKIP == 0 and j % PIXEL_SKIP == 0:
            ax.text(j, i, str(val), ha='center', va='center',
                    fontsize=FONT_SIZE, color=OVERLAY_COLOR, fontweight=FONT_WEIGHT)
    ax.set_title(f"{bits}-bit", fontsize=12)
    ax.axis('off')

# Save with timestamp
timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
output_path = os.path.join(os.path.dirname(INPUT_FILE), f"overlay_panel_all_bitdepths_{timestamp}.png")
fig.tight_layout(rect=[0, 0, 1, 0.95])
fig.savefig(output_path, dpi=300)

# Redoing the overlay panel: each bit-depth will now display its own quantized pixel values

# Create new overlay panel with correct per-bit-depth values
fig, axs = plt.subplots(1, len(BIT_DEPTHS), figsize=(FIGSIZE_PER_IMAGE[0]*len(BIT_DEPTHS), FIGSIZE_PER_IMAGE[1]))
for ax, bits in zip(axs, BIT_DEPTHS):
    # Quantize full image and crop relevant section
    quantized_image = simulate_bit_depth(image_np, bits)
    display_crop = quantized_image[y1:y2, x1:x2]

    # Show image and overlay the quantized pixel values (not original intensity)
    ax.imshow(display_crop, cmap='gray', vmin=0, vmax=255)
    for (i, j), val in np.ndenumerate(display_crop):
        if i % PIXEL_SKIP == 0 and j % PIXEL_SKIP == 0:
            ax.text(j, i, str(val), ha='center', va='center',
                    fontsize=FONT_SIZE, color=OVERLAY_COLOR, fontweight=FONT_WEIGHT)
    ax.set_title(f"{bits}-bit", fontsize=12)
    ax.axis('off')

# Save corrected overlay panel
timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
corrected_overlay_path = os.path.join(os.path.dirname(INPUT_FILE), f"corrected_overlay_panel_{timestamp}.png")
fig.tight_layout(rect=[0, 0, 1, 0.95])
fig.savefig(corrected_overlay_path, dpi=300)

print(f"Saved to: {corrected_overlay_path}")

corrected_overlay_path
