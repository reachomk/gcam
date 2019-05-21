.class public final Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer;
.super Ljava/lang/Object;
.source "ImageIntentAppStatechartInitializer.java"

# interfaces
.implements Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;


# instance fields
.field private final cameraDeviceStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;

.field private final imageIntentStatechartInitializer:Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer;->imageIntentStatechartInitializer:Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;

    .line 19
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer;->cameraDeviceStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;

    .line 20
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer;->imageIntentStatechartInitializer:Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/ImageIntentStatechartInitializer;->initialize()V

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/ImageIntentAppStatechartInitializer;->cameraDeviceStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->initialize()V

    .line 26
    return-void
.end method
