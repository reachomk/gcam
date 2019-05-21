.class Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Closed;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoCamcorderDeviceStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Closed"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)V
    .locals 1

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Closed;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([F)V

    return-void
.end method


# virtual methods
.method public camcorderOpened(ZZLcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Closed;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0, p1}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$002(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Z)Z

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Closed;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0, p2}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$102(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Z)Z

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Closed;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0, p3}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$202(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/OneCameraCharacteristics;

    .line 49
    return-void
.end method
