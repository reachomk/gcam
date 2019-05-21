.class final Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart$1;
.super Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;
.source "GeneratedCameraDeviceStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;-><init>(Lcom/android/camera/util/CameraMode;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;-><init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V

    return-void
.end method


# virtual methods
.method public final cameraOpened(Lcom/android/camera/one/OneCameraCharacteristics;Ljava/lang/String;Lcom/google/android/apps/camera/async/AddOnlyLifetime;)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;->cameraOpened(Lcom/android/camera/one/OneCameraCharacteristics;Ljava/lang/String;Lcom/google/android/apps/camera/async/AddOnlyLifetime;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;->access$100(Lcom/android/camera/ui/controller/GeneratedCameraDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 36
    return-void
.end method
