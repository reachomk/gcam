.class final Lcom/android/camera/one/v2/metadata/face/FaceDetectionResponseListener;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "FaceDetectionResponseListener.java"


# instance fields
.field private final faces:Lcom/google/android/apps/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/Updatable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/google/android/libraries/smartburst/utils/handles/Handles;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionResponseListener;->faces:Lcom/google/android/apps/camera/async/Updatable;

    .line 17
    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 4

    .prologue
    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget-object v2, p0, Lcom/android/camera/one/v2/metadata/face/FaceDetectionResponseListener;->faces:Lcom/google/android/apps/camera/async/Updatable;

    new-instance v3, Lcom/google/android/libraries/smartburst/utils/handles/Handles;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    .line 24
    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 25
    invoke-interface {p1, v1}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1}, Lcom/google/android/libraries/smartburst/utils/handles/Handles;-><init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;)V

    .line 22
    invoke-interface {v2, v3}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 27
    :cond_0
    return-void
.end method
