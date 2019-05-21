.class public Lcom/android/camera/ui/controller/CameraDeviceStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CameraDeviceStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;,
        Lcom/android/camera/ui/controller/CameraDeviceStatechart$Closed;
    }
.end annotation


# instance fields
.field private aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

.field private cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final cameraMode:Lcom/android/camera/util/CameraMode;

.field private evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

.field private flashOptionListener:Lcom/google/android/apps/camera/optionsbar/view/OptionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/optionsbar/view/OptionListener",
            "<",
            "Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;",
            ">;"
        }
    .end annotation
.end field

.field private flashProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable;"
        }
    .end annotation
.end field

.field private gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

.field private mainThread:Lcom/google/android/apps/camera/async/MainThread;

.field private optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

.field private settings:Lcom/android/camera/settings/Settings;


# direct methods
.method public constructor <init>(Lcom/android/camera/util/CameraMode;Lcom/google/android/apps/camera/evcomp/EvCompViewController;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(S)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 202
    new-instance v0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart$1;-><init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V

    iput-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->flashOptionListener:Lcom/google/android/apps/camera/optionsbar/view/OptionListener;

    .line 53
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->cameraMode:Lcom/android/camera/util/CameraMode;

    .line 54
    iput-object p2, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object p1
.end method

.method static synthetic access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7C______(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/async/Observable;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->flashProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/controller/CameraDeviceStatechart;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->updateFlashOptionUi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->flashProperty$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NM2SRPDPHIUK3IDTO6ASJKF4TG____:Lcom/google/android/apps/camera/async/Observable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/async/MainThread;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/android/camera/settings/Settings;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->settings:Lcom/android/camera/settings/Settings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->postCloseOnMainThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->showFlashUiOptionIfSupported()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->showHdrPlusUiOptionIfSupported()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    return-object v0
.end method

.method static synthetic access$700$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGRFDPQ74RRCDHIN4EO_(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->evCompViewController:Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    return-object v0
.end method

.method static synthetic access$900$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3DTN6CQB75T3N6PBIEPKM6PBJ91IMOS35E8TG____(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    return-object v0
.end method

.method private final postCloseOnMainThread()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/ui/controller/CameraDeviceStatechart$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart$2;-><init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 242
    return-void
.end method

.method private final showFlashUiOptionIfSupported()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->FLASH:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->showCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 186
    :cond_0
    return-void
.end method

.method private final showHdrPlusUiOptionIfSupported()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->cameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isHdrPlusSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->cameraMode:Lcom/android/camera/util/CameraMode;

    sget-object v1, Lcom/android/camera/util/CameraMode;->CAPTURE_INTENT:Lcom/android/camera/util/CameraMode;

    if-eq v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->HDR_PLUS:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->showCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 180
    :cond_0
    return-void
.end method

.method private final updateFlashOptionUi(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 189
    invoke-static {p1}, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->decodeSettingsString(Ljava/lang/String;)Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/OneCameraSettingsModule$Flash;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->AUTO:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->selectFlashOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;)V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->ON:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->selectFlashOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;)V

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;->OFF:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->selectFlashOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$AutoOnOffOption;)V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public initialize$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIURRGEHKMURJJC9GN4BRMD5INEBQFE1Q6IRREED162SILD4TKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR1EDSMSOPF9LGMIRIKD1P6AOB47D666RRD5TGMSP3IDTKM8BR3C5MMASJ15TPMAT3KD5N6ESPFADIN8T39DPJN6EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3DTN6CQB75T3N6PBIEPKM6PBJ91IMOS35E8TIILG_(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/settings/Settings;Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->optionsBarUi:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    .line 65
    iput-object p2, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->mainThread:Lcom/google/android/apps/camera/async/MainThread;

    .line 66
    iput-object p3, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->settings:Lcom/android/camera/settings/Settings;

    .line 67
    iput-object p4, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->aeController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FDTN6ABRM68NM2TBKDTJ6UORLECNK2PA3DTN78SJFDHM6ASHR:Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    .line 68
    iput-object p5, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->gservicesHelper$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCDNMSPJ9CSNKESR5E9R6IOR5ED46AR3GCLP3M___:Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->flashOptionListener:Lcom/google/android/apps/camera/optionsbar/view/OptionListener;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->addFlashListener(Lcom/google/android/apps/camera/optionsbar/view/OptionListener;)V

    .line 70
    return-void
.end method
