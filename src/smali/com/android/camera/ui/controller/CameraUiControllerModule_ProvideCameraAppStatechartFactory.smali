.class public final Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraAppStatechartFactory;
.super Ljava/lang/Object;
.source "CameraUiControllerModule_ProvideCameraAppStatechartFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider;"
    }
.end annotation


# instance fields
.field private final cameraDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraUiStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraUiStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/ui/controller/CameraUiControllerModule;

.field private final videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/CameraUiControllerModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraUiStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraAppStatechartFactory;->module:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 27
    iput-object p2, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraAppStatechartFactory;->cameraUiStatechartProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraAppStatechartFactory;->cameraDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p4, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraAppStatechartFactory;->videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 32
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 8
    .line 1036
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraAppStatechartFactory;->cameraUiStatechartProvider:Ljavax/inject/Provider;

    .line 1038
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/CameraUiStatechart;

    iget-object v1, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraAppStatechartFactory;->cameraDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 1039
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCameraAppStatechartFactory;->videoCamcorderDeviceStatechartProvider:Ljavax/inject/Provider;

    .line 1040
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    .line 1142
    new-instance v3, Lcom/android/camera/ui/controller/GeneratedCameraAppStatechart;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/ui/controller/GeneratedCameraAppStatechart;-><init>(Lcom/android/camera/ui/controller/CameraUiStatechart;Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)V

    .line 1037
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 1036
    invoke-static {v3, v0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/CameraAppStatechart;

    .line 8
    return-object v0
.end method
