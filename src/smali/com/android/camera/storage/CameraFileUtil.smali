.class public interface abstract Lcom/android/camera/storage/CameraFileUtil;
.super Ljava/lang/Object;
.source "CameraFileUtil.java"


# virtual methods
.method public abstract writeBytesToFile(Ljava/io/File;Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeFile(Ljava/io/File;Ljava/io/InputStream;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeImageFile(Ljava/io/File;Ljava/io/InputStream;Lcom/google/common/base/Optional;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/InputStream;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
