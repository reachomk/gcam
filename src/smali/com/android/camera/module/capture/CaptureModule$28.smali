.class final Lcom/android/camera/module/capture/CaptureModule$28;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/capture/CaptureModule;->notifyUiStatechartOnCameraOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/capture/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/capture/CaptureModule;)V
    .locals 0

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/android/camera/module/capture/CaptureModule$28;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/camera/module/capture/CaptureModule$28;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/module/capture/CaptureModule;->access$4500(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/capture/CaptureModule$28;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    .line 1810
    invoke-static {v1}, Lcom/android/camera/module/capture/CaptureModule;->access$4200(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/capture/CaptureModule$28;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    .line 1811
    invoke-static {v2}, Lcom/android/camera/module/capture/CaptureModule;->access$4300(Lcom/android/camera/module/capture/CaptureModule;)Lcom/android/camera/module/OneModuleConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/capture/CaptureModule$28;->this$0:Lcom/android/camera/module/capture/CaptureModule;

    .line 1812
    invoke-static {v3}, Lcom/android/camera/module/capture/CaptureModule;->access$4400(Lcom/android/camera/module/capture/CaptureModule;)Lcom/google/android/apps/camera/async/Lifetime;

    move-result-object v3

    .line 1809
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/statecharts/StateBase;->cameraOpened(Lcom/android/camera/one/OneCameraCharacteristics;Ljava/lang/String;Lcom/google/android/apps/camera/async/AddOnlyLifetime;)V

    .line 1813
    return-void
.end method
