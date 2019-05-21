.class final Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart$2;
.super Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;
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
    .line 34
    iput-object p1, p0, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;-><init>(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)V

    return-void
.end method


# virtual methods
.method public final camcorderClosed()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 38
    invoke-super {p0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->camcorderClosed()V

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;->access$000(Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart$2;->this$0:Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;

    invoke-static {v1}, Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;->access$200(Lcom/android/camera/ui/controller/GeneratedVideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 40
    return-void
.end method
