.class final Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener$1;
.super Ljava/lang/Object;
.source "DeviceOrientationImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$listener:Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;

.field private synthetic val$newDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;


# direct methods
.method constructor <init>(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;Lcom/google/android/apps/camera/util/layout/Orientation;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener$1;->val$listener:Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;

    iput-object p2, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener$1;->val$newDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener$1;->val$listener:Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;

    iget-object v1, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener$1;->val$newDeviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-interface {v0, v1}, Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;->onDeviceOrientationChanged(Lcom/google/android/apps/camera/util/layout/Orientation;)V

    .line 129
    return-void
.end method
