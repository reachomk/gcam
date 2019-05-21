.class public final Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;
.super Ljava/lang/Object;
.source "ObservableDeviceOrientation.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/async/Observable",
        "<",
        "Lcom/google/android/apps/camera/util/layout/Orientation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final orientationManager:Lcom/android/camera/util/deviceorientation/DeviceOrientation;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/deviceorientation/DeviceOrientation;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;->orientationManager:Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    .line 24
    new-instance v0, Lcom/google/android/apps/camera/async/MainThread;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/MainThread;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;)Lcom/android/camera/util/deviceorientation/DeviceOrientation;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;->orientationManager:Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Updatable",
            "<",
            "Lcom/google/android/apps/camera/util/layout/Orientation;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/apps/camera/async/SafeCloseable;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1;

    invoke-direct {v0, p2, p1}, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/async/Updatable;)V

    .line 43
    iget-object v1, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;->orientationManager:Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    invoke-interface {v1, v0}, Lcom/android/camera/util/deviceorientation/DeviceOrientation;->addListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V

    .line 45
    iget-object v1, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$2;-><init>(Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/async/Updatable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 61
    new-instance v1, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$3;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$3;-><init>(Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V

    return-object v1
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    .line 1072
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;->orientationManager:Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    invoke-interface {v0}, Lcom/android/camera/util/deviceorientation/DeviceOrientation;->deviceOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    .line 17
    return-object v0
.end method
