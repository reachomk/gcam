.class final Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$3;
.super Ljava/lang/Object;
.source "ObservableDeviceOrientation.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;

.field private synthetic val$deviceOrienationListener:Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;


# direct methods
.method constructor <init>(Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$3;->this$0:Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;

    iput-object p2, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$3;->val$deviceOrienationListener:Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$3;->this$0:Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;

    invoke-static {v0}, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;->access$000(Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation;)Lcom/android/camera/util/deviceorientation/DeviceOrientation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$3;->val$deviceOrienationListener:Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/util/deviceorientation/DeviceOrientation;->removeListener(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;)V

    .line 65
    return-void
.end method
