.class final Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart$1;
.super Lcom/android/camera/ui/controller/CameraFacingStatechart$Back;
.source "GeneratedCameraFacingStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/CameraFacingStatechart$Back;-><init>(Lcom/android/camera/ui/controller/CameraFacingStatechart;)V

    return-void
.end method


# virtual methods
.method public final setFrontCamera()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 25
    invoke-super {p0}, Lcom/android/camera/ui/controller/CameraFacingStatechart$Back;->setFrontCamera()V

    .line 26
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;->access$100(Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 27
    return-void
.end method

.method public final toggleCamera()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 32
    invoke-super {p0}, Lcom/android/camera/ui/controller/CameraFacingStatechart$Back;->toggleCamera()V

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;->access$100(Lcom/android/camera/ui/controller/GeneratedCameraFacingStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 34
    return-void
.end method
