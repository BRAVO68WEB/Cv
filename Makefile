# Define variables for common paths
RESUME := resume.yaml
OUTPUT_DIR := out
ZIP_FILE := resume.zip

all: generate

# Generate the LaTeX file from the template and JSON data
generate:
	rendercv render $(RESUME) --output-folder-name $(OUTPUT_DIR)
	zip -r $(ZIP_FILE) $(OUTPUT_DIR)
