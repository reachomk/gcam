.class final Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/utils/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/postprocessing/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessSavedImageFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/smartburst/utils/Function",
        "<",
        "Ljava/io/File;",
        "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
        "<",
        "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final bitmapLoaderFactory:Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;

.field private final fileName:Ljava/io/File;

.field private final metadataAdder:Lcom/android/camera/burst/xmp/MetadataAdder;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/camera/burst/xmp/MetadataAdder;Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p3, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;->bitmapLoaderFactory:Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;

    .line 323
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iput-object p1, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;->fileName:Ljava/io/File;

    .line 327
    iput-object p2, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;->metadataAdder:Lcom/android/camera/burst/xmp/MetadataAdder;

    .line 328
    return-void
.end method

.method private apply(Ljava/io/File;)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle",
            "<",
            "Lcom/google/android/libraries/smartburst/media/BitmapLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;->metadataAdder:Lcom/android/camera/burst/xmp/MetadataAdder;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;->fileName:Ljava/io/File;

    .line 335
    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->bufferedFileOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v2

    .line 333
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/burst/xmp/MetadataAdder;->addAndStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 336
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 337
    iget-object v0, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;->bitmapLoaderFactory:Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;

    iget-object v1, p0, Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;->fileName:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/camera/burst/postprocessing/BitmapLoaderFactory;->fromFile(Ljava/io/File;)Lcom/google/android/libraries/smartburst/media/BitmapLoader;

    move-result-object v0

    .line 2065
    new-instance v1, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandle;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->to(Ljava/lang/AutoCloseable;)Lcom/google/android/libraries/smartburst/utils/handles/Handle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/utils/handles/RefCountingHandle;-><init>(Lcom/google/android/libraries/smartburst/utils/handles/Handle;)V

    .line 1079
    invoke-static {v1}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;->makeSafe(Lcom/google/android/libraries/smartburst/utils/handles/SharedHandle;)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 337
    return-object v0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 340
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 314
    check-cast p1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/camera/burst/postprocessing/ImageProcessor$ProcessSavedImageFunction;->apply(Ljava/io/File;)Lcom/google/android/libraries/smartburst/utils/handles/SafeSharedHandle;

    move-result-object v0

    return-object v0
.end method
