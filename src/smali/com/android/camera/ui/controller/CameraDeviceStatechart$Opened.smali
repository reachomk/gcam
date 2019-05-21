.class Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "CameraDeviceStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/CameraDeviceStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Opened"
.end annotation


# instance fields
.field private openedCameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

.field final synthetic this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V
    .locals 1

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(S)V

    return-void
.end method


# virtual methods
.method public cameraClosed()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public final enter()V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/google/android/apps/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/google/android/apps/camera/async/Lifetime;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->openedCameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$400(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$500(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)V

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$600(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->TIMER:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->showCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 1163
    iget-object v1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7C______(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$1000(Lcom/android/camera/ui/controller/CameraDeviceStatechart;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->openedCameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    .line 1165
    invoke-static {v1}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$100$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR7DTNMER355TGMSP3IDTKM8BR1E1O76BR3C5MMASJ15TGN6UBECCNL0SJFE1IN4T3P7C______(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    new-instance v2, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened$1;-><init>(Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;)V

    iget-object v3, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    .line 1172
    invoke-static {v3}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$1100(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/async/MainThread;

    move-result-object v3

    .line 1165
    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/camera/async/Observable;->addCallback(Lcom/google/android/apps/camera/async/Updatable;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/camera/async/SafeCloseable;

    move-result-object v1

    .line 1164
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/Lifetime;->add(Lcom/google/android/apps/camera/async/SafeCloseable;)Lcom/google/android/apps/camera/async/SafeCloseable;

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$700$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BRFDPIIUTHI5TGNAT3FCPNM6TBJ5T0MAGRFDPQ74RRCDHIN4EO_(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->reset()V

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$000(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isExposureCompensationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$800(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    .line 124
    invoke-static {v1}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$000(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinExposureCompensation()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    .line 125
    invoke-static {v2}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$000(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxExposureCompensation()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    .line 126
    invoke-static {v3}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$000(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getExposureCompensationStep()F

    move-result v3

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->enable(IIF)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$900$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3DTN6CQB75T3N6PBIEPKM6PBJ91IMOS35E8TG____(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->isDeviceSupportingWhiteBalance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$600(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->WHITE_BALANCE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->showCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$600(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->show()V

    .line 137
    return-void
.end method

.method public final exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$600(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->FLASH:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$600(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->HDR_PLUS:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$600(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->TIMER:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$800(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->disable()V

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$900$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MAACCDNMQBR1DPI74RR9CGNM6OBDCLP62BR3DTN6CQB75T3N6PBIEPKM6PBJ91IMOS35E8TG____(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->isDeviceSupportingWhiteBalance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$600(Lcom/android/camera/ui/controller/CameraDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->WHITE_BALANCE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->openedCameraLifetime:Lcom/google/android/apps/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/Lifetime;->close()V

    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0, v2}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$002(Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/OneCameraCharacteristics;

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/controller/CameraDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/CameraDeviceStatechart;

    invoke-static {v0, v2}, Lcom/android/camera/ui/controller/CameraDeviceStatechart;->access$102$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHF8DGMQPBIC526ATJ9CDIL6T31EHIM6Q31E9Q3MJ33DTMIUPRFDTJMOP9FC5N68SJFD5I2UOBGE1PIUOR1DLIN4O9FC5PNIRJ35T874RRGCLP78U9R55666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQGE9NN0PBIEHSJM___(Lcom/android/camera/ui/controller/CameraDeviceStatechart;Lcom/google/android/apps/camera/async/Observable;)Lcom/google/android/apps/camera/async/Observable;

    .line 152
    return-void
.end method
