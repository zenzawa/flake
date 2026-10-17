// Usage:
//   deno run --allow-read --allow-write replace_images.ts <imagesDir> <listFile> <replacementImage>
//
// Example:
//   deno run --allow-read --allow-write replace_images.ts ./images ./list.txt ./new.jpg

const [dir, replacement] = Deno.args;

if (!dir || !replacement) {
  console.error(
    "Usage: deno run --allow-read --allow-write replace_images.ts <imagesDir> <replacementImage>",
  );
  Deno.exit(1);
}

const names = [
  "application-text.png",
  "gnome-mime-text-plain.png",
  "gnome-mime-text-x-c++.png",
  "gnome-mime-text-x-c++src.png",
  "gnome-mime-text-x-c.png",
  "gnome-mime-text-x-changelog.png",
  "gnome-mime-text-x-chdr.png",
  "gnome-mime-text-x-copying.png",
  "gnome-mime-text-x-csrc.png",
  "gnome-mime-text-x-makefile.png",
  "gnome-mime-text-x-readme.png",
  "gnome-mime-text-x-source.png",
  "gnome-mime-text.png",
  "text-plain.png",
  "text-x-c++.png",
  "text-x-c++src.png",
  "text-x-c.png",
  "text-x-changelog.png",
  "text-x-chdr.png",
  "text-x-cmake.png",
  "text-x-copying.png",
  "text-x-csrc.png",
  "text-x-generic-template.png",
  "text-x-generic.png",
  "text-x-kgw.png",
  "text-x-makefile.png",
  "text-x-meson.png",
  "text-x-perl.png",
  "text-x-preview.png",
  "text-x-readme.png",
  "text-x-source.png",
  "text-x-vala.png",
  "text.png",
  "text2.png",
];

let done = 0;
for (const name of names) {
  const target = `${dir}/${name}`;
  try {
    // Delete the old image if it exists
    try {
      await Deno.remove(target);
    } catch (err) {
      if (!(err instanceof Deno.errors.NotFound)) throw err;
    }
    // Create a new file with the same name, copied from your image
    await Deno.copyFile(replacement, target);
    done++;
    console.log(`replaced: ${name}`);
  } catch (err) {
    console.warn(`Skipped ${name}: ${(err as Error).message}`);
  }
}

console.log(`\nDone. ${done}/${names.length} files replaced.`);
