.class public final Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;
.super Ljava/lang/Object;
.source "CaptureStatechartInitializer_Factory.java"

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
.field private final aeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;"
        }
    .end annotation
.end field

.field private final camcorderStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraActivityUiProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraFacingStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;",
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

.field private final captureStatechartProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CaptureStatechart;",
            ">;"
        }
    .end annotation
.end field

.field private final countdownStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final hfrTorchStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final hfrVideoStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final lensBlurStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final panoramaStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final perLaunchPropertiesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/PropertyResetter;",
            ">;"
        }
    .end annotation
.end field

.field private final photoSphereStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final photoVideoStatechartInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private final toyboxDrawerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;",
            ">;"
        }
    .end annotation
.end field

.field private final volumeKeyControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            ">;"
        }
    .end annotation
.end field

.field private final windowProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CaptureStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/CameraUiStatechart;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/view/Window;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/google/android/apps/camera/async/PropertyResetter;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->cameraFacingStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->captureStatechartProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->cameraUiStatechartProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->photoVideoStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p5, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->camcorderStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p6, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->countdownStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 85
    iput-object p7, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->hfrVideoStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 87
    iput-object p8, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->hfrTorchStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 89
    iput-object p9, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->panoramaStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 91
    iput-object p10, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->photoSphereStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 93
    iput-object p11, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->lensBlurStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 95
    iput-object p12, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    .line 97
    iput-object p13, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->toyboxDrawerControllerProvider:Ljavax/inject/Provider;

    .line 99
    iput-object p14, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->windowProvider:Ljavax/inject/Provider;

    .line 101
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 103
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->perLaunchPropertiesProvider:Ljavax/inject/Provider;

    .line 105
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    .line 106
    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 18

    .prologue
    .line 15
    .line 1110
    new-instance v1, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->cameraFacingStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1111
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->captureStatechartProvider:Ljavax/inject/Provider;

    .line 1112
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/controller/CaptureStatechart;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->cameraUiStatechartProvider:Ljavax/inject/Provider;

    .line 1113
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/controller/CameraUiStatechart;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->photoVideoStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1114
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->camcorderStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1115
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->countdownStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1116
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->hfrVideoStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1117
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->hfrTorchStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1118
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->panoramaStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1119
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->photoSphereStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1120
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->lensBlurStatechartInitializerProvider:Ljavax/inject/Provider;

    .line 1121
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->cameraActivityUiProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->toyboxDrawerControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->windowProvider:Ljavax/inject/Provider;

    .line 1124
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/Window;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->aeControllerProvider:Ljavax/inject/Provider;

    .line 1125
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->perLaunchPropertiesProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v0

    .line 1126
    invoke-interface/range {v16 .. v16}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/apps/camera/async/PropertyResetter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer_Factory;->volumeKeyControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v0

    .line 1127
    invoke-interface/range {v17 .. v17}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    invoke-direct/range {v1 .. v17}, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;-><init>(Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;Lcom/android/camera/ui/controller/CaptureStatechart;Lcom/android/camera/ui/controller/CameraUiStatechart;Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer;Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer;Ljavax/inject/Provider;Ljavax/inject/Provider;Landroid/view/Window;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/PropertyResetter;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;)V

    .line 15
    return-object v1
.end method
