.class final Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed$1;
.super Ljava/lang/Object;
.source "CameraDeviceStatechart.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;->cameraOpened(Lcom/android/camera/one/OneCameraCharacteristics;Ljava/lang/String;Lcom/google/android/apps/camera/async/AddOnlyLifetime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed$1;->this$1:Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed$1;->this$1:Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;

    iget-object v0, v0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$300(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V

    .line 95
    return-void
.end method
