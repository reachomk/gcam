.class final Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl$5;
.super Ljava/lang/Object;
.source "PreProcessedJpegImageSaver.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/PreProcessedJpegImageSaver$SessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
        "Lcom/google/common/collect/Multimaps;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 355
    check-cast p1, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;

    .line 1360
    new-instance v0, Lcom/google/common/collect/Multimaps;

    .line 1362
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->getJpegBytes()[B

    move-result-object v1

    .line 1363
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->getSize()Lcom/android/camera/util/Size;

    move-result-object v2

    const/4 v3, 0x0

    .line 1365
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->getExif()Lcom/android/camera/exif/ExifInterface;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/common/collect/Multimaps;-><init>([BLcom/android/camera/util/Size;ILcom/android/camera/exif/ExifInterface;)V

    .line 1360
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 355
    return-object v0
.end method
