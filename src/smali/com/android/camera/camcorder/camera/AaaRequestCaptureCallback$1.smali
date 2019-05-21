.class final Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback$1;
.super Ljava/lang/Object;
.source "AaaRequestCaptureCallback.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/AaaRequestCaptureCallback;->getScanResult()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Futures2$Function2",
        "<",
        "Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;",
        "Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;",
        "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 43
    check-cast p1, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    check-cast p2, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    .line 1048
    invoke-interface {p2}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->getFrameNumber()J

    move-result-wide v0

    .line 1049
    invoke-interface {p1}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->getFrameNumber()J

    move-result-wide v2

    .line 1047
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;->partialScanResult$5154KAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGB6ADHM2RIICLPNAR3K7C______(JJ)Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;

    move-result-object v0

    .line 43
    return-object v0
.end method
