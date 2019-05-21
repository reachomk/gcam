.class public final Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;
.super Ljava/lang/Object;
.source "VideoCamcorderDeviceStatechartInitializer.java"

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

.field private final evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private final gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private final videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Ljavax/inject/Provider;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/android/camera/ui/views/CameraActivityUi;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;",
            "Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;",
            "Lcom/google/android/apps/camera/evcomp/EvCompViewController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    .line 32
    iput-object p2, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 34
    iput-object p4, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 35
    iput-object p5, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 36
    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->cameraActivityUi:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/views/CameraActivityUi;

    invoke-virtual {v0}, Lcom/android/camera/ui/views/CameraActivityUi;->checkedView()Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;

    move-result-object v0

    .line 41
    const v1, 0x7f1100be

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/util/ui/CheckedFindViewById;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 42
    iget-object v1, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->videoCamcorderDeviceStatechart:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    iget-object v2, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    iget-object v3, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    iget-object v4, p0, Lcom/android/camera/ui/controller/initializers/VideoCamcorderDeviceStatechartInitializer;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6RRECPKMEBQ7EDIN4TJ9CDIN6I35DHO6ASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMATJ3DTMN0BQ5EP1MURBGAPKMATQ3DTN78SJFDHM6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR55B0____(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)V

    .line 47
    return-void
.end method
