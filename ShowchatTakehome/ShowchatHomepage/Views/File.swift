let fileManager = NSFileManager.defaultManager()
let bundleURL = NSBundle.mainBundle().bundleURL
let assetURL = bundleURL.URLByAppendingPathComponent("Images.bundle")
let contents = try! fileManager.contentsOfDirectoryAtURL(assetURL, includingPropertiesForKeys: [NSURLNameKey, NSURLIsDirectoryKey], options: .SkipsHiddenFiles)

for item in contents
{
  print(item.lastPathComponent)
}
