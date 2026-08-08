# Define variables for common paths
RESUME := resume.yaml
OUTPUT_DIR := rendercv_output
ZIP_FILE := resume.zip
# Keep in sync with requirements.txt / .github/workflows/compile.yml
RENDERCV_VERSION ?= 2.8

all: generate

# RenderCV 2.x → Typst → PDF/HTML/MD/PNG under rendercv_output/
generate:
	@rendercv --version 2>/dev/null || true
	rendercv render $(RESUME)
	@test -d $(OUTPUT_DIR) || (echo "ERROR: $(OUTPUT_DIR) missing after render" && exit 1)
	rm -f $(ZIP_FILE)
	zip -r $(ZIP_FILE) $(OUTPUT_DIR)
