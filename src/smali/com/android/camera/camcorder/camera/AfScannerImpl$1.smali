.class final Lcom/android/camera/camcorder/camera/AfScannerImpl$1;
.super Ljava/lang/Object;
.source "AfScannerImpl.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Futures2$Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/camcorder/camera/AfScannerImpl;->triggerAfScan(Lcom/google/android/apps/camera/proxy/camera2/CameraCaptureSessionProxy;Lcom/android/camera/camcorder/camera/CameraRepeatingCaptureCallback;ZLcom/google/android/apps/camera/aaa/FocusPoint;Ljava/util/List;Ljava/lang/Runnable;)V
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
        "Lcom/google/android/libraries/smartburst/buffers/serialization/BinaryFeatureTableSerializer;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/camcorder/camera/AfScannerImpl;

.field final synthetic val$afResetRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/camcorder/camera/AfScannerImpl;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/camcorder/camera/AfScannerImpl$1;->this$0:Lcom/android/camera/camcorder/camera/AfScannerImpl;

    iput-object p2, p0, Lcom/android/camera/camcorder/camera/AfScannerImpl$1;->val$afResetRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 63
    check-cast p2, Ljava/lang/Boolean;

    .line 1066
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/camera/camcorder/camera/AfScannerImpl$1;->this$0:Lcom/android/camera/camcorder/camera/AfScannerImpl;

    invoke-static {v0}, Lcom/android/camera/camcorder/camera/AfScannerImpl;->access$300(Lcom/android/camera/camcorder/camera/AfScannerImpl;)Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/camera/camcorder/camera/AfScannerImpl$1$1;

    invoke-direct {v1, p0}, Lcom/android/camera/camcorder/camera/AfScannerImpl$1$1;-><init>(Lcom/android/camera/camcorder/camera/AfScannerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ResettingDelayedExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1078
    :cond_0
    const/4 v0, 0x0

    .line 63
    return-object v0
.end method
