# alhambra_midjourney
Alhambra Midjourney Project

## Shell commands

### Compress folder
```
tar cvfz cdn.discordapp.com.tgz cdn.discordapp.com
```

### Create Thumbnails
```
mogrify -format jpg -thumbnail 480 `find . -name '*.png'`
```

### Find files
```
find -name "*.jpg" cdn.discordapp.com/
```

### Create full path copy
```
rsync -R cdn.discordapp.com/attachments/945077390839787570/1132078866664534077/slyfoxsyndicate_Alhambrainlessness_996954b5-1eae-479c-8421-c25940c54614.png /root/.
```
### Find and delete with and without confirmation
```
find cdn.discordapp.com -name "*.png" -exec /bin/rm -i {} \;
```
```
find cdn.discordapp.com -name "*.png" -exec /bin/rm {} \;
```

## Download files process
### 1. Upload HTML file previously created with Discord Chat Exporter Chrome extension

### 2. Download files
```
cat 22_01_00.html | ./get_img.pl
```
### 3. Save png full size files and download new file

```
tar cvfz cdn.discordapp.com_22_23_50_png.tgz cdn.discordapp.com
```
### 4. Create Thumbnails
```
mogrify -format jpg -thumbnail 480 `find . -name '*.png'`
```

### 5. Delete png bigfiles
```
find cdn.discordapp.com -name "*.png" -exec /bin/rm {} \;
```
### 6. Save jpg files
´´´
tar cvfz cdn.discordapp.com_22_23_50_jpg.tgz cdn.discordapp.com/
´´´

### 7. Copy jpg files to web server
´´´´
cp -R cdn.discordapp.com/ /var/www/html/.
´´´´

### 8. Modify html file to change png for jpg file extensions
For that, I used notepad++ macros to add navigation menu, replace .png extensions to .jpg extensions and to replace image file address from "http//" to "./"




