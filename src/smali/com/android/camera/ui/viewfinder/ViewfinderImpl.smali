.class final Lcom/android/camera/ui/viewfinder/ViewfinderImpl;
.super Ljava/lang/Object;
.source "ViewfinderImpl.java"

# interfaces
.implements Lcom/android/camera/ui/viewfinder/Viewfinder;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final firstSurfaceViewAdapter:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final instrumentation:Lcom/android/camera/stats/Instrumentation;

.field private final lock:Ljava/lang/Object;

.field private final log:Lcom/android/camera/debug/Logger;

.field private final logFactory:Lcom/android/camera/debug/Logger$Factory;

.field private final mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private final surfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private surfaceDestroyedListener:Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;

.field private surfaceView:Landroid/view/SurfaceView;

.field private surfaceViewAdapter:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private final viewfinderFrame:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "Viewfinder"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/stats/Instrumentation;Lcom/android/camera/ui/MainActivityLayout;Lcom/android/camera/ui/views/CameraUi;Lcom/android/camera/debug/trace/Trace;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/viewfinder/ViewfinderImpl$2;-><init>(Lcom/android/camera/ui/viewfinder/ViewfinderImpl;)V

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 59
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->logFactory:Lcom/android/camera/debug/Logger$Factory;

    .line 60
    iget-object v0, p6, Lcom/android/camera/ui/views/CameraUi;->viewfinderFrame:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->viewfinderFrame:Landroid/widget/FrameLayout;

    .line 61
    iput-object p2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 62
    iput-object p3, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 63
    iput-object p4, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    .line 64
    iput-object p5, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

    .line 65
    iput-object p7, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 66
    sget-object v0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->TAG:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->log:Lcom/android/camera/debug/Logger;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->lock:Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->firstSurfaceViewAdapter:Lcom/google/common/util/concurrent/SettableFuture;

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Viewfinder constructed."

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/viewfinder/ViewfinderImpl;)Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceDestroyedListener:Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;

    return-object v0
.end method

.method private final resetExistingSurfaceView()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Stopping current viewfinder"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceViewAdapter:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceViewAdapter:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->stopViewfinder()V

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceViewAdapter:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->close()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceViewAdapter:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->viewfinderFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 132
    :cond_1
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->resetExistingSurfaceView()V

    .line 112
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getViewfinderSurface()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceViewAdapter:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceViewAdapter:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-virtual {v0}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->getSurfaceRequest()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->firstSurfaceViewAdapter:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Lcom/android/camera/ui/viewfinder/ViewfinderImpl$1;

    invoke-direct {v2}, Lcom/android/camera/ui/viewfinder/ViewfinderImpl$1;-><init>()V

    invoke-static {v0, v2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setSurfaceDestroyedListener(Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceDestroyedListener:Lcom/android/camera/ui/viewfinder/Viewfinder$SurfaceDestroyedListener;

    .line 118
    return-void
.end method

.method public final swapAndStartSurfaceViewViewfinder(Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/viewfinder/ViewfinderConfig;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->log:Lcom/android/camera/debug/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "swapAndStartSurfaceViewViewfinder with configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "swapAndStartSurfaceViewViewfinder"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 79
    iget-object v8, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 80
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->resetExistingSurfaceView()V

    .line 1136
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->viewfinderFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceView:Landroid/view/SurfaceView;

    .line 1137
    new-instance v0, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->logFactory:Lcom/android/camera/debug/Logger$Factory;

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->viewfinderFrame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceView:Landroid/view/SurfaceView;

    iget-object v4, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    iget-object v5, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    iget-object v6, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->instrumentation:Lcom/android/camera/stats/Instrumentation;

    iget-object v7, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->mainActivityLayout:Lcom/android/camera/ui/MainActivityLayout;

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;-><init>(Lcom/android/camera/debug/Logger$Factory;Landroid/widget/FrameLayout;Landroid/view/SurfaceView;Lcom/android/camera/ui/CaptureLayoutHelper;Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/stats/Instrumentation;Lcom/android/camera/ui/MainActivityLayout;)V

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceViewAdapter:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    .line 1145
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->firstSurfaceViewAdapter:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceViewAdapter:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1146
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1148
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1151
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->viewfinderFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->log:Lcom/android/camera/debug/Logger;

    const-string v1, "Starting the new viewfinder"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->surfaceViewAdapter:Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/viewfinder/SurfaceViewAdapter;->startViewfinder(Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 86
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderImpl;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 88
    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
