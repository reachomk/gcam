.class public final Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;
.super Ljava/lang/Object;
.source "CameraAppStatechartInitializer.java"

# interfaces
.implements Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;


# instance fields
.field private final camcorderStatechartInitializer:Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;

.field private final cameraDeviceStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;

.field private final captureStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;->captureStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;

    .line 22
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;->cameraDeviceStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;

    .line 23
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;->camcorderStatechartInitializer:Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;

    .line 24
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;->captureStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->initialize()V

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;->cameraDeviceStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->initialize()V

    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CameraAppStatechartInitializer;->camcorderStatechartInitializer:Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->initialize()V

    .line 31
    return-void
.end method
