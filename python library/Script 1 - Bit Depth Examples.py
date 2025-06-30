import os
import numpy as np
from PIL import Image
from datetime import datetime
import matplotlib.pyplot as plt
from tkinter import filedialog, Tk

# ======== USER CONFIGURATION ========
BIT_DEPTHS = [1, 2, 4, 8, 16]
FIGSIZE_PER_IMAGE = (4, 4)
PAD_TOP = 0.9
PAD_BOTTOM = 0.05
PAD_LEFT = 0.01
PAD_RIGHT = 0.99
# ====================================

def simulate_bit_depth(img, bits):
    max_val = 2**bits - 1
    scaled = (img - img.min()) / (img.max() - img.min())
    quantized = np.round(scaled * max_val).astype(np.uint16)
    return (quantized / max_val * 255).astype(np.uint8)

# Create a root window and hide it
root = Tk()
root.withdraw()

# Open file dialog to select image
print("Please select an image file...")
input_file = filedialog.askopenfilename(
    title="Select an image file",
    filetypes=[
        ("Image files", "*.tif *.tiff *.png *.jpg *.jpeg *.bmp"),
        ("TIFF files", "*.tif *.tiff"),
        ("All files", "*.*")
    ]
)

# Check if user cancelled
if not input_file:
    print("No file selected. Exiting...")
    exit()

print(f"Selected file: {input_file}")

# Load image
image = Image.open(input_file).convert("I")
image_np = np.array(image)

# Simulate all bit depths
bit_images = [simulate_bit_depth(image_np, b) for b in BIT_DEPTHS]

# Create figure
fig, axs = plt.subplots(1, len(BIT_DEPTHS), figsize=(FIGSIZE_PER_IMAGE[0]*len(BIT_DEPTHS), FIGSIZE_PER_IMAGE[1]))
for ax, img, bits in zip(axs, bit_images, BIT_DEPTHS):
    ax.imshow(img, cmap='gray', vmin=0, vmax=255)
    ax.set_title(f'{bits}-bit', fontsize=12)
    ax.axis('off')
fig.tight_layout(rect=[PAD_LEFT, PAD_BOTTOM, PAD_RIGHT, PAD_TOP])

# Save
timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
output_path = os.path.join(os.path.dirname(input_file), f"bit_depth_panel_{timestamp}.png")
fig.savefig(output_path, dpi=300)
print(f"Saved to: {output_path}")
