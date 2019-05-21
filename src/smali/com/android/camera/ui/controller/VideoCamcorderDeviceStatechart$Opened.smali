.class Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "VideoCamcorderDeviceStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Opened"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>([F)V

    return-void
.end method


# virtual methods
.method public camcorderClosed()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public final enter()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$000(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$300(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->FLASH:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->showCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$100(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$300(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->FPS:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->showCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFAPKM8PBF8DGMQORFE9I6ASI4CLR6IOR5ADQ62T35CDK62SJK7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6RRECPKMEBQ7EDIN4TJ9CDIN6I35DHO6ASHR(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->isDeviceSupportingWhiteBalance()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$300(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->WHITE_BALANCE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->showCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$200(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isExposureCompensationSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$500(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    .line 67
    invoke-static {v1}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$200(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->getMinExposureCompensation()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    .line 68
    invoke-static {v2}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$200(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getMaxExposureCompensation()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    .line 69
    invoke-static {v3}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$200(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getExposureCompensationStep()F

    move-result v3

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->enable(IIF)V

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$600$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFAPKM8PBF8DGMQORFE9I6ASI4CLR6IOR5ADQ62T35CDK62SJK7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NMURJ55TR34BR1ELQ6UPJFCDQN6BQ1CL1MURJKE9NMOR35E8TG____(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/buffers/serialization/legacy/FeatureTableSerializer;->reset()V

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$300(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->show()V

    .line 78
    return-void
.end method

.method public final exit()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$002(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;Z)Z

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$300(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->FLASH:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$100(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$300(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->FPS:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$400$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TQMIBR3DTN78SJFDHM6ASHFAPKM8PBF8DGMQORFE9I6ASI4CLR6IOR5ADQ62T35CDK62SJK7CKKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM6RRECPKMEBQ7EDIN4TJ9CDIN6I35DHO6ASHR(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/selection/ImageSelectorModule;->isDeviceSupportingWhiteBalance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$300(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;->WHITE_BALANCE:Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi;->hideCaptureOption(Lcom/google/android/apps/camera/optionsbar/view/OptionsBarUi$CaptureOption;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart$Opened;->this$0:Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;

    invoke-static {v0}, Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;->access$500(Lcom/android/camera/ui/controller/VideoCamcorderDeviceStatechart;)Lcom/google/android/apps/camera/evcomp/EvCompViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompViewController;->disable()V

    .line 91
    return-void
.end method
