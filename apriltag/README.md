## Usage
```
docker build -t xiangfuli/docker-repo:apriltag-generation .
# mount your downloads folder and save the generated apriltag images
docker run -v ~/Downloads:/tmp xiangfuli/docker-repo:apriltag-generation java -cp april.jar april.tag.GenerateTags april.tag.Tag25h9 /tmp/Tag25h9
docker run -v ~/Downloads:/tmp xiangfuli/docker-repo:apriltag-generation convert /tmp/Tag25h9/tag25_09_00000.png -scale 300% tag25_09_00000_scaled.png
```
