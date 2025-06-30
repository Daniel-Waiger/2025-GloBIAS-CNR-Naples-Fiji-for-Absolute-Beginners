import os
import numpy as np
from PIL import Image
from datetime import datetime
import matplotlib.pyplot as plt
from tkinter import filedialog, Tk

# ======== USER CONFIGURATION ========
CROP_BOX = (150, 200, 150, 200)  # y1, y2, x1, x2
PIXEL_SKIP = 1
FONT_SIZE = 3
OVERLAY_COLOR = 'red'
FONT_WEIGHT = 'bold'
FIGSIZE = (8, 8)
# ====================================

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

# Crop region
y1, y2, x1, x2 = CROP_BOX
crop = image_np[y1:y2, x1:x2]
bit_image = ((crop - crop.min()) / (crop.max() - crop.min()) * 255).astype(np.uint8)

# Create figure
fig, ax = plt.subplots(figsize=FIGSIZE)
ax.imshow(bit_image, cmap='gray')
for (i, j), val in np.ndenumerate(crop):
    if i % PIXEL_SKIP == 0 and j % PIXEL_SKIP == 0:
        ax.text(j, i, str(val), ha='center', va='center',
                fontsize=FONT_SIZE, color=OVERLAY_COLOR, fontweight=FONT_WEIGHT)
ax.set_title("Pixel Overlay")
ax.axis('off')

# Save
timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
output_path = os.path.join(os.path.dirname(input_file), f"overlay_panel_{timestamp}.png")
fig.savefig(output_path, dpi=300)
print(f"Saved to: {output_path}")
