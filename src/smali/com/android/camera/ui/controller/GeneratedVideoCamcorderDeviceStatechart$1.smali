.class final Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart$1;
.super Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Closed;
.source "GeneratedVideoCamcorderDeviceStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Closed;-><init>(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)V

    return-void
.end method


# virtual methods
.method public final camcorderOpened(ZZLcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Closed;->camcorderOpened(ZZLcom/android/camera/one/OneCameraCharacteristics;)V

    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart$1;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;->access$100(Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 31
    return-void
.end method
