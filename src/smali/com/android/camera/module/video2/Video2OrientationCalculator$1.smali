.class final Lcom/android/camera/module/video2/Video2OrientationCalculator$1;
.super Ljava/lang/Object;
.source "Video2OrientationCalculator.java"

# interfaces
.implements Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video2/Video2OrientationCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/module/video2/Video2OrientationCalculator;


# direct methods
.method constructor <init>(Lcom/android/camera/module/video2/Video2OrientationCalculator;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator$1;->this$0:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceOrientationChanged(Lcom/google/android/apps/camera/util/layout/Orientation;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator$1;->this$0:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->access$000(Lcom/android/camera/module/video2/Video2OrientationCalculator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator$1;->this$0:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->access$100(Lcom/android/camera/module/video2/Video2OrientationCalculator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator$1;->this$0:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    invoke-static {v0}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->access$300(Lcom/android/camera/module/video2/Video2OrientationCalculator;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/video2/Video2OrientationCalculator$1;->this$0:Lcom/android/camera/module/video2/Video2OrientationCalculator;

    invoke-static {v2, p1}, Lcom/android/camera/module/video2/Video2OrientationCalculator;->access$200(Lcom/android/camera/module/video2/Video2OrientationCalculator;Lcom/google/android/apps/camera/util/layout/Orientation;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 37
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
