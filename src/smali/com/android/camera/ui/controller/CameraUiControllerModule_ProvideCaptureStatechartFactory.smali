.class public final Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;
.super Ljava/lang/Object;
.source "CameraUiControllerModule_ProvideCaptureStatechartFactory.java"

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
.field private final cameraFacingStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraFacingStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final hfrVideoStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/HfrVideoStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final lensBlurStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/LensBlurStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/camera/ui/controller/CameraUiControllerModule;

.field private final panoramaStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PanoramaStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final photoSphereStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoSphereStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final photoVideoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoVideoStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final videoTorchStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/CameraUiControllerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/CameraUiControllerModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoVideoStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraFacingStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/HfrVideoStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/VideoTorchStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PanoramaStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/PhotoSphereStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/LensBlurStatechart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->module:Lcom/android/camera/ui/controller/CameraUiControllerModule;

    .line 39
    iput-object p2, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->photoVideoProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->cameraFacingStatechartProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p4, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->hfrVideoStatechartProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p5, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->videoTorchStatechartProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->panoramaStatechartProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->photoSphereStatechartProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p8, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->lensBlurStatechartProvider:Ljavax/inject/Provider;

    .line 52
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 8
    .line 1056
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->photoVideoProvider:Ljavax/inject/Provider;

    .line 1058
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/controller/PhotoVideoStatechart;

    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->cameraFacingStatechartProvider:Ljavax/inject/Provider;

    .line 1059
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/controller/CameraFacingStatechart;

    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->hfrVideoStatechartProvider:Ljavax/inject/Provider;

    .line 1060
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/controller/HfrVideoStatechart;

    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->videoTorchStatechartProvider:Ljavax/inject/Provider;

    .line 1061
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/controller/VideoTorchStatechart;

    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->panoramaStatechartProvider:Ljavax/inject/Provider;

    .line 1062
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/PanoramaStatechart;

    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->photoSphereStatechartProvider:Ljavax/inject/Provider;

    .line 1063
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/controller/PhotoSphereStatechart;

    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraUiControllerModule_ProvideCaptureStatechartFactory;->lensBlurStatechartProvider:Ljavax/inject/Provider;

    .line 1064
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/controller/LensBlurStatechart;

    .line 1105
    new-instance v0, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ui/controller/GeneratedCaptureStatechart;-><init>(Lcom/android/camera/ui/controller/LensBlurStatechart;Lcom/android/camera/ui/controller/PanoramaStatechart;Lcom/android/camera/ui/controller/PhotoSphereStatechart;Lcom/android/camera/ui/controller/PhotoVideoStatechart;Lcom/android/camera/ui/controller/CameraFacingStatechart;Lcom/android/camera/ui/controller/HfrVideoStatechart;Lcom/android/camera/ui/controller/VideoTorchStatechart;)V

    .line 1057
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 1056
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/controller/CaptureStatechart;

    .line 8
    return-object v0
.end method
