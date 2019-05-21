.class final Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingToJpegEncodingResultImageSaver$ConvertImageToJpegEncodingResultFunction;
.super Ljava/lang/Object;
.source "ReprocessingToJpegEncodingResultImageSaver.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/android/camera/one/v2/imagemanagement/MetadataImage;",
        "Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/one/v2/imagesaver/reprocessing/ReprocessingToJpegEncodingResultImageSaver$ConvertImageToJpegEncodingResultFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;

    .line 1029
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;

    .line 1031
    invoke-static {p1, v0}, Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;->fromReprocessedImage$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUS3IDTS7IBR3C5MMASJ168NKIRB1CTIL0SJFF1SJMJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FE1P6UU3P5THM2RB5E9GJ4BQKDTQ62R23C5O78TBICL96ASRLDHQ50SJFF1SJMAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TKMQOB7CLPM2TJ5E8NKKS35CT2MSORFCHKMSPQICLPNAR3K7C______(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Lcom/google/android/libraries/smartburst/training/SummaryWriterSerializer;

    move-result-object v0

    .line 1034
    invoke-virtual {p1}, Lcom/android/camera/one/v2/imagemanagement/MetadataImage;->close()V

    .line 23
    return-object v0
.end method
