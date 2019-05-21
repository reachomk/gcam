.class final Lcom/android/camera/module/capture/CaptureModule$3;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/capture/CaptureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Updatable",
        "<",
        "Lcom/android/camera/one/v2/OneCameraSettingsModule$HdrPlusMode;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$3;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic update(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 362
    .line 1365
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$3;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-virtual {v0}, Lcom/android/camera/module/capture/CaptureModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v0

    .line 1366
    if-eqz v0, :cond_0

    .line 1369
    invoke-interface {v0}, Lcom/android/camera/hardware/HardwareSpec;->isHdrPlusSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$3;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/module/capture/CaptureModule;->access$500(Lcom/android/camera/module/capture/CaptureModule;Z)V

    .line 362
    :cond_0
    return-void
.end method
