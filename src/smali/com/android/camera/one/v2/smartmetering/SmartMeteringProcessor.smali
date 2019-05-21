.class interface abstract Lcom/android/camera/one/v2/smartmetering/SmartMeteringProcessor;
.super Ljava/lang/Object;
.source "SmartMeteringProcessor.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# virtual methods
.method public abstract getLatestViewfinderFrame()Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract process(Lcom/android/camera/one/v2/imagemanagement/MetadataImage;Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
.end method

.method public abstract startCapture()Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/googlex/gcam/AeResults;",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/apps/camera/async/ResourceUnavailableException;
        }
    .end annotation
.end method
