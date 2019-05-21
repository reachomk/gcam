.class final Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;
.super Landroid/view/OrientationEventListener;
.source "DeviceOrientationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RawDeviceOrientationListener"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;->this$0:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;

    .line 98
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 99
    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 7

    .prologue
    .line 105
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 132
    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;->this$0:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;

    invoke-static {v0, p1}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->access$000(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;I)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v1

    .line 112
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;->this$0:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;

    invoke-static {v0}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->access$100(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    if-eq v1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;->this$0:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;

    invoke-static {v0}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->access$200(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;->this$0:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;

    .line 118
    invoke-static {v2}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->access$100(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;)Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x26

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "DeviceOrientation changing (from:to) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;->this$0:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;

    invoke-static {v0, v1}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->access$102(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;Lcom/google/android/apps/camera/util/layout/Orientation;)Lcom/google/android/apps/camera/util/layout/Orientation;

    .line 123
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;->this$0:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;

    invoke-static {v0}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->access$300(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;

    .line 124
    iget-object v3, p0, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener;->this$0:Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;

    invoke-static {v3}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;->access$400(Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v3

    new-instance v4, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener$1;

    invoke-direct {v4, v0, v1}, Lcom/android/camera/util/deviceorientation/DeviceOrientationImpl$RawDeviceOrientationListener$1;-><init>(Lcom/android/camera/util/deviceorientation/DeviceOrientation$Listener;Lcom/google/android/apps/camera/util/layout/Orientation;)V

    invoke-virtual {v3, v4}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
