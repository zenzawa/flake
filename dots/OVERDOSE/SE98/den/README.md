# NOTE: listFile is coded into names variable, no need for it

# replace_images

A small Deno script that replaces a set of images with copies of one image you provide.

Give it a folder of images, a text file listing the filenames to replace, and a replacement image. For every name on the list, the script deletes the existing file and creates a new file with the same name, copied from your replacement image.

## Requirements

- [Deno](https://deno.com) 1.x or newer

## Usage

```bash
deno run --allow-read --allow-write replace_images.ts <imagesDir> <listFile> <replacementImage>
```

| Argument | Description |
| --- | --- |
| `imagesDir` | Folder containing the images |
| `listFile` | Text file with one filename per line |
| `replacementImage` | Image that every listed file will be replaced with |

### Example

```bash
deno run --allow-read --allow-write replace_images.ts ./images ./list.txt ./new.jpg
```

## Name list format

One filename per line, including the extension. Blank lines and extra whitespace are ignored.

```
photo1.jpg
photo2.jpg
vacation/photo3.jpg
```

Names are resolved relative to `imagesDir`.

## How it works

1. Reads `listFile` and splits it into a list of filenames.
2. For each name, deletes `imagesDir/<name>` if it exists.
3. Copies `replacementImage` to `imagesDir/<name>`.
4. Prints a line per file and a summary at the end.

If something goes wrong with a file (for example a permissions error), the script prints a warning and continues with the next name.

## Permissions

Deno blocks file access by default, so the flags are required:

- `--allow-read` to read the list file, the replacement image, and the folder
- `--allow-write` to delete and create files

## Notes and caveats

- **Deletion is permanent.** Back up your folder, or test on a copy first.
- **Missing files are created.** If a name on the list doesn't exist in the folder, the script still creates it from the replacement image.
- **No format conversion.** The file is copied byte for byte. If the replacement is a `.png` and the listed files are `.jpg`, the new files will contain PNG data under a `.jpg` name. Use a replacement in the same format as the files you're replacing.
- **Subfolders must exist.** A name like `vacation/photo3.jpg` only works if the `vacation` folder already exists.
