.class final Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$1;
.super Ljava/lang/Object;
.source "AfRequestSenderImpl.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/AfRequestSenderImpl;->sendAfRequest(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy$CaptureCallback;ZLandroid/graphics/PointF;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic val$settableScanResult:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$1;->val$settableScanResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$1;->val$settableScanResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 96
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 87
    check-cast p1, Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;

    .line 1090
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfRequestSenderImpl$1;->val$settableScanResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method
