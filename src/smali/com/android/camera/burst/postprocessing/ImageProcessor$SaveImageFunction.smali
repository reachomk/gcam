.class final Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/postprocessing/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveImageFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
        "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
        "<",
        "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final bitmapLoaderFactory:Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;

.field private final fileName:Ljava/io/File;

.field private final location:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataAdder:Lcom/android/camera/burst/xmp/MetadataAdder;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/camera/burst/xmp/MetadataAdder;Lcom/google/common/base/Optional;Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/android/camera/burst/xmp/MetadataAdder;",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/location/Location;",
            ">;",
            "Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;->fileName:Ljava/io/File;

    .line 267
    iput-object p2, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;->metadataAdder:Lcom/android/camera/burst/xmp/MetadataAdder;

    .line 268
    iput-object p3, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;->location:Lcom/google/common/base/Optional;

    .line 269
    iput-object p4, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;->bitmapLoaderFactory:Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;

    .line 270
    return-void
.end method

.method private apply$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQAE1IMEHBECDNM8QBECT96ASRLDHQ3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BRCD5H74OBID5IN6BRJDLGN4T32ELP76T1FELQ6IR3J5TK62RJ4DHIN6BQJC5J6AKR8C5P6AP28C5N68R357C______(Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
            ")",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->getJpegBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;->fileName:Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->getExif()Lcom/android/camera/exif/ExifInterface;

    move-result-object v0

    .line 1287
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;->location:Lcom/google/common/base/Optional;

    .line 1304
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1305
    new-instance v4, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v4, v0}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    .line 1306
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v4, v0}, Lcom/android/camera/util/ExifUtil;->addLocationToExif(Landroid/location/Location;)V

    .line 1307
    invoke-virtual {v4}, Lcom/android/camera/util/ExifUtil;->getExif()Lcom/android/camera/exif/ExifInterface;

    move-result-object v0

    .line 1310
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 1290
    iget-object v2, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;->metadataAdder:Lcom/android/camera/burst/xmp/MetadataAdder;

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/burst/xmp/MetadataAdder;->addAndStream([BLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;->bitmapLoaderFactory:Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;

    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;->fileName:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;->fromFile(Ljava/io/File;)Lcom/google/android/libraries/smartburst/media/BitmapLoader;

    move-result-object v0

    .line 3065
    new-instance v1, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandle;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandle;-><init>(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)V

    .line 2079
    invoke-static {v1}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/SharedHandle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    move-result-object v0

    .line 282
    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    check-cast p1, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;

    invoke-direct {p0, p1}, Lcom/android/camera/burst/postprocessing/ImageProcessor$SaveImageFunction;->apply$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TNMSP9FEOP2UQBDC5JMASR1EPIN4BQAE1IMEHBECDNM8QBECT96ASRLDHQ3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BRCD5H74OBID5IN6BRJDLGN4T32ELP76T1FELQ6IR3J5TK62RJ4DHIN6BQJC5J6AKR8C5P6AP28C5N68R357C______(Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    move-result-object v0

    return-object v0
.end method
