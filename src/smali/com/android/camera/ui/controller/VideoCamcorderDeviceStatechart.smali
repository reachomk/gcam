.class public Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoCamcorderDeviceStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;,
        Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Closed;
    }
.end annotation


# instance fields
.field private aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

.field private cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private isFpsOptionSupported:Z

.field private isTorchSupported:Z

.field private optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([F)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->isTorchSupported:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->isTorchSupported:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->isFpsOptionSupported:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->isFpsOptionSupported:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    return-object v0
.end method

.method static synthetic access$400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFAPKM8PBF8DGMQORFE9I6ASI4CLR6IOR5ADQ62T35CDK62SJK7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6RRECPKMEBQ7EDIN4TJ9CDIN6I35DHO6ASHR(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    return-object v0
.end method

.method static synthetic access$600$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFAPKM8PBF8DGMQORFE9I6ASI4CLR6IOR5ADQ62T35CDK62SJK7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CL1MURJKE9NMOR35E8TG____(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    return-object v0
.end method


# virtual methods
.method public initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6RRECPKMEBQ7EDIN4TJ9CDIN6I35DHO6ASHR9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMATJ3DTMN0BQ5EP1MURBGAPKMATQ3DTN78SJFDHM6ASHR9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR55B0____(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;Lcom/google/android/apps/camera/evcomp/EvCompViewController;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 35
    iput-object p2, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 36
    iput-object p3, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 37
    iput-object p4, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 38
    return-void
.end method
