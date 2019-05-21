.class final Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1$1;
.super Ljava/lang/Object;
.source "ObservableDeviceOrientation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1;->onDeviceOrientationChanged(Lcom/google/android/apps/camera/util/layout/Orientation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1;

.field private synthetic val$deviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;


# direct methods
.method constructor <init>(Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1;Lcom/google/android/apps/camera/util/layout/Orientation;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1$1;->this$1:Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1;

    iput-object p2, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1$1;->val$deviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1$1;->this$1:Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1;

    iget-object v0, v0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1;->val$callback:Lcom/google/android/apps/camera/async/Updatable;

    iget-object v1, p0, Lcom/android/camera/util/deviceorientation/ObservableDeviceOrientation$1$1;->val$deviceOrientation:Lcom/google/android/apps/camera/util/layout/Orientation;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 39
    return-void
.end method
