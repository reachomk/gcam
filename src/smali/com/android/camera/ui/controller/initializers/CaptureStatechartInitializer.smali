.class public final Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;
.super Ljava/lang/Object;
.source "CaptureStatechartInitializer.java"

# interfaces
.implements Lcom/android/camera/ui/controller/initializers/UiControllerInitializer;


# instance fields
.field private final aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

.field private final cameraActivityUi:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraFacingStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;

.field private final cameraUiStatechart:Lcom/android/camera/ui/controller/CameraUiStatechart;

.field private final captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

.field private final countdownStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;

.field private final hfrTorchStatechartInitializer:Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

.field private final hfrVideoStatechartInitializer:Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer;

.field private final lensBlurStatechartInitializer:Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer;

.field private final panoramaStatechartInitializer:Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;

.field private final perLaunchProperties:Lcom/google/android/apps/camera/async/PropertyResetter;

.field private final photoSphereStatechartInitializer:Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;

.field private final photoVideoStatechartInitializer:Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;

.field private final toyboxDrawerController:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;",
            ">;"
        }
    .end annotation
.end field

.field private final volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

.field private final window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;Lcom/android/camera/ui/controller/CaptureStatechart;Lcom/android/camera/ui/controller/CameraUiStatechart;Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer;Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer;Ljavax/inject/Provider;Ljavax/inject/Provider;Landroid/view/Window;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/PropertyResetter;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->cameraFacingStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;

    .line 64
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

    .line 65
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->cameraUiStatechart:Lcom/android/camera/ui/controller/CameraUiStatechart;

    .line 66
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->photoVideoStatechartInitializer:Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;

    .line 67
    iput-object p5, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->countdownStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;

    .line 68
    iput-object p6, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->hfrVideoStatechartInitializer:Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer;

    .line 69
    iput-object p7, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->hfrTorchStatechartInitializer:Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

    .line 70
    iput-object p8, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->panoramaStatechartInitializer:Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;

    .line 71
    iput-object p9, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->photoSphereStatechartInitializer:Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;

    .line 72
    iput-object p10, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->lensBlurStatechartInitializer:Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer;

    .line 73
    iput-object p11, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    .line 74
    iput-object p12, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->toyboxDrawerController:Ljavax/inject/Provider;

    .line 75
    iput-object p13, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->window:Landroid/view/Window;

    .line 76
    iput-object p14, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 77
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->perLaunchProperties:Lcom/google/android/apps/camera/async/PropertyResetter;

    .line 78
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    .line 79
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 8

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v7

    .line 84
    const v0, 0x7f1100be

    invoke-virtual {v7, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 85
    const v0, 0x7f1100bd

    invoke-virtual {v7, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/PreviewOverlay;

    .line 86
    const v0, 0x7f1100b4

    invoke-virtual {v7, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->photoVideoStatechartInitializer:Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/PhotoVideoStatechartInitializer;->initialize()V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->cameraFacingStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/CameraFacingStatechartInitializer;->initialize()V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->panoramaStatechartInitializer:Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/PanoramaStatechartInitializer;->initialize()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->photoSphereStatechartInitializer:Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/PhotoSphereStatechartInitializer;->initialize()V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->lensBlurStatechartInitializer:Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/LensBlurStatechartInitializer;->initialize()V

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->countdownStatechartInitializer:Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/CountdownStatechartInitializer;->initialize()V

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->hfrVideoStatechartInitializer:Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/HfrVideoStatechartInitializer;->initialize()V

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->hfrTorchStatechartInitializer:Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;

    invoke-virtual {v0}, Lcom/android/camera/ui/controller/initializers/VideoTorchStatechartInitializer;->initialize()V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->captureStatechart:Lcom/android/camera/ui/controller/CaptureStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->toyboxDrawerController:Ljavax/inject/Provider;

    .line 97
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;

    iget-object v5, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->window:Landroid/view/Window;

    iget-object v6, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 95
    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/controller/CaptureStatechart;->initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NNAQ9FEHNNIOJFF1MMARJL5TA6UUB2DTS48SJ1ETIN4GRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRLD4NL0SJ5EPKMATQFEPIN4R31F4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR7E9KM8R39DPIN6BRMD5INEBQ7E9KM8J39DPIN6LB97D662RJ4E9NMIP1FEPKMATPFATKMSP3FESTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CL1MURJKE9NMOR35E8TIILG_(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/android/camera/ui/toyboxmenu/ToyboxDrawerController;Lcom/android/camera/ui/PreviewOverlay;Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;Landroid/view/Window;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)V

    .line 102
    const v0, 0x7f1100d9

    .line 103
    invoke-virtual {v7, v0}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PhotoVideoPaginator;

    .line 104
    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->cameraUiStatechart:Lcom/android/camera/ui/controller/CameraUiStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->window:Landroid/view/Window;

    iget-object v3, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->perLaunchProperties:Lcom/google/android/apps/camera/async/PropertyResetter;

    iget-object v4, p0, Lcom/android/camera/ui/controller/initializers/CaptureStatechartInitializer;->volumeKeyController:Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/camera/ui/controller/CameraUiStatechart;->initialize(Landroid/view/Window;Lcom/google/android/apps/camera/async/PropertyResetter;Lcom/android/camera/ui/PhotoVideoPaginator;Lcom/android/camera/ui/hardwarekeycontroller/volumekeycontroller/VolumeKeyController;)V

    .line 109
    return-void
.end method
