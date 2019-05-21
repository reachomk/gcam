.class public final Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;
.super Ljava/lang/Object;
.source "CameraDeviceStatechartInitializer.java"

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

.field private final cameraDeviceStatechart:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private final mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private final settings:Lcom/android/camera/settings/Settings;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart;Ljavax/inject/Provider;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/settings/Settings;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/CameraDeviceStatechart;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            "Lcom/google/android/apps/camera/async/MainThread;",
            "Lcom/android/camera/settings/Settings;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->cameraDeviceStatechart:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    .line 35
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 37
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 38
    iput-object p5, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->settings:Lcom/android/camera/settings/Settings;

    .line 39
    iput-object p6, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 40
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 6

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    .line 45
    const v1, 0x7f1100be

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->cameraDeviceStatechart:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    iget-object v3, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->settings:Lcom/android/camera/settings/Settings;

    iget-object v4, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    iget-object v5, p0, Lcom/android/camera/ui/controller/initializers/CameraDeviceStatechartInitializer;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9LGMIRIKD1P6AOB47D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3DTN6CQB75T3N6PBIEPKM6PBJ91IMOS35E8TIILG_(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/settings/Settings;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V

    .line 48
    return-void
.end method
