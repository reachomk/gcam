.class final Lcom/android/camera/burst/postprocessing/BurstExif$1;
.super Ljava/lang/Object;
.source "BurstExif.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/common/base/Optional",
        "<",
        "Landroid/location/Location;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic val$burstDirectory:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/BurstExif$1;->val$burstDirectory:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    .line 1101
    invoke-static {}, Lcom/google/android/libraries/smartburst/storage/names/FileNames;->getBurstStackParser()Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;

    move-result-object v0

    .line 1102
    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/BurstExif$1;->val$burstDirectory:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;->listSummaryFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    .line 1104
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 1105
    invoke-static {v3}, Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;->extractExif(Ljava/io/File;)Lcom/android/camera/exif/ExifInterface;

    move-result-object v3

    .line 1106
    invoke-static {v3}, Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;->populateAndGetLocation(Lcom/android/camera/exif/ExifInterface;)Landroid/location/Location;

    move-result-object v3

    .line 1107
    if-eqz v3, :cond_0

    .line 1108
    invoke-static {v3}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_1
    return-object v0

    .line 1104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_1
.end method
